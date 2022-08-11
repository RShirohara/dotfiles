# Settings for using yubikey with WSL2.

local win_user_profile="$(pwsh.exe -c '$Env:UserProfile' | sed 's/\r//')"
local wsl2_ssh_pageant_bin="$(wslpath ${win_user_profile})/.bin/wsl2-ssh-pageant.exe"
local win_socket_path="${win_user}\AppData\Local\gnupg"

## SSH socket
if ! ss -a | grep -q "${SSH_AUTH_SOCK}"; then
    rm -rf "${SSH_AUTH_SOCK}"
    if [[ -x "${wsl2_ssh_pageant_bin}" ]]; then
        (setsid nohup socat \
            UNIX_LISTEN:"${SSH_AUTH_SOCK},fork" \
            EXEC:"${wsl2_ssh_pageant_bin} -gpgConfigBasepath ${win_socket_path} -gpg S.gpg-agent.ssh" \
                >/dev/null 2>&1 &)
    fi
fi

## GPG Socket
if ! ss -a | grep -q "${GPG_AGENT_SOCK}"; then
    rm -rf "${GPG_AGENT_SOCK}"
    if [[ -x "${wsl2_ssh_pageant_bin}" ]]; then
        (setsid nohup socat \
            UNIX_LISTEN:"${GPG_AGENT_SOCK},fork" \
            EXEC:"${wsl2_ssh_pageant_bin} -gpgConfigBasepath ${win_socket_path} -gpg S.gpg-agent" \
                >/dev/null 2>&1 &)
    fi
fi
