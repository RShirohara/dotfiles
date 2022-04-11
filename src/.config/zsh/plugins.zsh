# zsh plugin settings.

## Set paths.
declare -A ZINIT
ZINIT[BIN_DIR]="${XDG_DATA_HOME}/zsh/zinit/zinit.git"
ZINIT[HOME_DIR]="${XDG_DATA_HOME}/zsh/zinit"
ZINIT[ZCOMPDUMP_PATH]="${XDG_CACHE_HOME}/zsh/zcompdump"
ZINIT[COMPINIT_OPTS]+="-C"

## Load zinit.
source "${ZINIT[BIN_DIR]}/zinit.zsh"

## Load plugins.
### powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k
source "${ZDOTDIR}/plugins/p10k.zsh"

### prezto modules
zinit snippet PZT::modules/environment/init.zsh
zinit snippet PZT::modules/terminal/init.zsh
zinit snippet PZT::modules/editor/init.zsh
zinit snippet PZT::modules/history/init.zsh
zinit snippet PZT::modules/directory/init.zsh
zinit snippet PZT::modules/spectrum/init.zsh
source "${ZDOTDIR}/plugins/prezto.zsh"
source "${ZDOTDIR}/plugins/prezto.terminal.zsh"
source "${ZDOTDIR}/plugins/prezto.editor.zsh"
source "${ZDOTDIR}/plugins/prezto.history.zsh"
source "${ZDOTDIR}/plugins/prezto.directory.zsh"

### auto-suggestion
zinit wait lucid atload'_zsh_autosuggest_start' light-mode for \
    zsh-users/zsh-autosuggestions

### completion
zinit ice blockf
zinit light zsh-users/zsh-completions
source "${ZDOTDIR}/plugins/zsh-completions.zsh"

### History substring search
zinit light zsh-users/zsh-history-substring-search

### Syntax highlight
zinit light zdharma-continuum/fast-syntax-highlighting
