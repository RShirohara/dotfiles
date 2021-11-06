# Defines environment variables.

## Dotfiles path.
export DOTPATH="${HOME}/.dotfiles"

## XDG Base Directory.
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

## zsh directory path.
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export HISTFILE="${XDG_STATE_HOME}/zsh/history"
if [ ! -d "${HISTFILE}" ]; then
    mkdir -p "${HISTFILE}"
fi

## History size.
export HISTSIZE=1000000
export SAVEHIST=1000000
