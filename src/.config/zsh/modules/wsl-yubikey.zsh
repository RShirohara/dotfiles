# Settings for using yubikey with WSL2.

if ! ss -a | grep -q "${SSH_AUTH_SOCK}"; then
    rm -rf "${SSH_AUTH_SOCK}"
    local win_user_profile="$(wslpath $(pwsh.exe -c '$Env:UserProfile') | sed 's/\r//')"
    local wsl2_ssh_pageant_bin="${win_user_profile}/.bin/wsl2-ssh-pageant.exe"
    if [[ -x "${wsl2_ssh_pageant_bin}" ]]; then
        setsid nohup socat \
            UNIX_LISTEN"${SSH_AUTH_SOCK},fork" \
            EXEC:"${wsl2_ssh_pageant_bin}" >/dev/null 2>&1 &
    fi
fi
