# Settings for using yubikey with WSL2.

local win_user_profile="$(pwsh.exe -c '$Env:UserProfile' | sed -e 's/\r//; s/\\/\//g')"
local win_socket_path="${win_user_profile}/AppData/Local/gnupg"

export SSH_AUTH_SOCK="{{output "gpgconf" "--list-dirs" "socketdir" | trim}}/S.wsl-gpg-agent.ssh"
export GPG_AGENT_SOCK="{{output "gpgconf" "--list-dirs" "socketdir" | trim}}/S.gpg-agent.wsl"

## SSH socket
if ! ss -a | grep -q "${SSH_AUTH_SOCK}"; then
  rm -rf "${SSH_AUTH_SOCK}"
  (setsid nohup socat \
    UNIX-LISTEN:"${SSH_AUTH_SOCK},fork" \
    EXEC:"wsl2-ssh-pageant.exe" \
    >/dev/null 2>&1 &)
fi

## GPG Socket
if ! ss -a | grep -q "${GPG_AGENT_SOCK}"; then
  rm -rf "${GPG_AGENT_SOCK}"
  (setsid nohup socat \
    UNIX-LISTEN:"${GPG_AGENT_SOCK},fork" \
    EXEC:"wsl2-ssh-pageant.exe -gpgConfigBasepath '${win_socket_path}' -gpg S.gpg-agent" \
    >/dev/null 2>&1 &)
fi
