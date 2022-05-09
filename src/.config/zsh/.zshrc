# Executes commands at the start of an interactive session.

## Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Set zinit paths.
declare -A ZINIT
ZINIT[HOME_DIR]="${XDG_DATA_HOME}/zsh/zinit"
ZINIT[BIN_DIR]="${ZINIT[HOME_DIR]}/zinit.git"
ZINIT[ZCOMPDUMP_PATH]="${XDG_CACHE_HOME}/zsh/zcompdump"
ZINIT[COMPINIT_OPTS]+="-C"

## Load zinit.
source "${ZINIT[BIN_DIR]}/zinit.zsh"

## Load local modules.
zinit is-snippet for \
    "${ZDOTDIR}/modules/directory.zsh" \
    "${ZDOTDIR}/modules/history.zsh" \
    "${ZDOTDIR}/modules/p10k.zsh" \
    "${ZDOTDIR}/modules/prezto.editor.zsh" \
    "${ZDOTDIR}/modules/prezto.terminal.zsh" \
    "${ZDOTDIR}/modules/python.zsh" \
    "${ZDOTDIR}/modules/zsh-completions.zsh" \
    "${ZDOTDIR}/modules/zsh-history-substring-search.zsh"

## Load plugins.
### powerlevel10k
zinit light-mode depth=1 for \
    romkatv/powerlevel10k

### shell extensions
zinit wait="0a" lucid light-mode for \
    blockf atload="zicompinit; zicdreplay" \
        zsh-users/zsh-completions \
    atload="!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    zdharma-continuum/fast-syntax-highlighting

zinit wait="0b" lucid light-mode for \
    zsh-users/zsh-history-substring-search \
    zdharma-continuum/history-search-multi-word

### Prezto module
zstyle ":prezto:module" pmodule "environment" "editor" "terminal"
zinit for \
    PZTM::environment \
    PZTM::editor \
    PZTM::terminal

### Python virtualenv
zinit wait="2" lucid light-mode for \
    MichaelAquilina/zsh-autoswitch-virtualenv
