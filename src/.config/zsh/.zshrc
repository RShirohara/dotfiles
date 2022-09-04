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
zinit is-snippet lucid for \
    "${ZDOTDIR}/modules/directory.zsh" \
    "${ZDOTDIR}/modules/history.zsh" \
    "${ZDOTDIR}/modules/p10k.zsh" \
    "${ZDOTDIR}/modules/python.zsh" \
    "${ZDOTDIR}/modules/coreutils.zsh"

## Load plugins.
### Theme
zinit light-mode lucid depth=1 for \
    romkatv/powerlevel10k

### Core extensions
zinit light-mode lucid wait="0a" for \
    blockf atload="zicompinit; zicdreplay" \
        zsh-users/zsh-completions \
    atload="!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    zdharma-continuum/fast-syntax-highlighting \
    is-snippet "${ZDOTDIR}/modules/zsh-completions.zsh"

zinit light-mode lucid wait="0b" for \
    zsh-users/zsh-history-substring-search \
    zdharma-continuum/history-search-multi-word \
    is-snippet "${ZDOTDIR}/modules/zsh-history-substring-search.zsh"

### Prezto module
zstyle ":prezto:module" pmodule "environment" "editor" "terminal"
zinit lucid for \
    PZTM::environment \
    PZTM::editor \
    PZTM::terminal \
    is-snippet "${ZDOTDIR}/modules/prezto.editor.zsh" \
    is-snippet "${ZDOTDIR}/modules/prezto.terminal.zsh"

### VSCode integration
zinit is-snippet lucid \
    has="code" if='[[ "$TERM_PROGRAM" == "vscode" ]]' for \
        "$(code --locate-shell-integration-path zsh)" \
        "${ZDOTDIR}/modules/vscode-shell-integration.zsh"

### Python virtualenv
zinit light-mode lucid has="poetry" for \
    MichaelAquilina/zsh-autoswitch-virtualenv

### Shell direnv
zinit lucid has="direnv" for \
    OMZP::direnv

### Yubikey integration on wsl
zinit light-mode lucid if='[[ "$(uname -r)" =~ [Mm]icrosoft ]]' for \
    is-snippet \
        "${ZDOTDIR}/modules/wsl-yubikey.zsh" \
    as="program" from="gh-r" pick="wsl2-ssh-pageant.exe" \
        BlackReloaded/wsl2-ssh-pageant

### Commands
zinit light-mode lucid if='[[ "$(uname -o)" == GNU/Linux ]]' for \
    as="program" from="gh-r" mv="markov* -> markov" pick="bin/markov" \
        RShirohara/markov-chain-generator-jp-cli
