# Executes commands at the start of an interactive session.

## Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Load settings.
source "$ZDOTDIR/setopts.zsh"
source "$ZDOTDIR/styles.zsh"

### Load pludins.
source "$ZDOTDIR/plugins.zsh"

### Load functions.
source "$ZDOTDIR/func.zsh"
source "$ZDOTDIR/aliases.zsh"

## Load powerlevel10k settings
source "$ZDOTDIR/p10k.zsh"

## Load zsh-users/zsh-completion
autoload -Uz compinit
_comp_path="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
if [[ $_comp_path(#qNmh-20) ]]; then
        compinit -C -d "$_comp_path"
    else
        mkdir -p "$_comp_path"
        compinit -i -d "$_comp_path"
fi
unset _comp_path

## History
HISTSIZE=100000
SAVEHIST=100000

## GPG signing
export GPG_TTY="$TTY"
