# Executes commands at the start of an interactive session.

## Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Load settings.
source "${ZDOTDIR}/setopts.zsh"
source "${ZDOTDIR}/styles.zsh"

### Load pludins.
source "${ZDOTDIR}/plugins.zsh"

### Load functions.
source "${ZDOTDIR}/functions.zsh"
source "${ZDOTDIR}/aliases.zsh"

### Load compinit.
zicompinit
