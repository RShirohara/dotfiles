# zsh plugin settings.

## Paths
declare -A ZINIT
ZINIT[BIN_DIR]="$DOTFILES/submodules/zinit"
ZINIT[HOME_DIR]="$XDG_CACHE_HOME/zsh/zinit"
ZINIT[ZCOMPDUMP_PATH]="$XDG_CACHE_HOME/zsh/zcompdump"

## Load
### zinit
source "$ZINIT[BIN_DIR]/zinit.zsh"

### Plugins
#### powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

#### prezto modules
zinit snippet PZT::modules/enviroment/init.zsh
zinit snippet PZT::modules/terminal/init.zsh
zinit snippet PZT::modules/editor/init.zsh
zinit snippet PZT::modules/history/init.zsh
zinit snippet PZT::modules/directory/init.zsh
zinit snippet PZT::modules/spectrum/init.zsh

### other
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-autosuggestions

