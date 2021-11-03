# Executes commands at the start of an interactive session.

## Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Load settings.
source "${ZDOTDIR}/setopts.zsh"
source "${ZDOTDIR}/styles.zsh"

### Load pludins.
source "${ZDOTDIR}/plugins.zsh"

### Load functions.
source "${ZDOTDIR}/func.zsh"
source "${ZDOTDIR}/aliases.zsh"

## Load powerlevel10k settings
source "${ZDOTDIR}/p10k.zsh"

## Load zsh-users/zsh-completion
autoload -Uz compinit
_comp_path="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"

if [[ ${_comp_path}(#qNmh-20) ]]; then
    compinit -C -d "${_comp_path}"
else
    ## Cannot find "${_comp_path}"
    mkdir -p "${_comp_path}:h"
    compinit -i -d "${_comp_path}"
    touch "${_comp_path}"
fi
unset _comp_path

## History
HISTSIZE=1000000
SAVEHIST=1000000

## Use Yubikey on WSL
if which npiperelay.exe &>/dev/null; then
    WIN_HOME_DIR='/mnt/d/Users/RShirohara'
    WIN_GPG_DIR="`wslpath -m ${WIN_HOME_DIR}`/Appdata/Roaming/gnupg"

    if ! pgrep -f 'socat.*gpg-agent.*npiperelay' >/dev/null; then
        rm -f "${HOME}/.gnupg/S.gpg-agent"
        setsid nohup socat \
            UNIX-LISTEN:"${HOME}/.gnupg/S.gpg-agent,fork" \
            EXEC:'npiperelay.exe -ei -ep -s -a "'"${WIN_GPG_DIR}"'/S.gpg-agent",nofork' &>/dev/null &
    fi
    export SSH_AUTH_SOCK="${WIN_HOME_DIR}/ssh-agent.sock"
fi
