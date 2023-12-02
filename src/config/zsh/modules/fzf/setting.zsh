# Settings for "junegunn/fzf" and "Aloxaf/fzf-tab".

## Environments
export FZF_DEFAULT_OPTS="--layout=reverse --bind=ctrl-a:toggle-all,ctrl-space:toggle+down"

## Styles
zstyle ":completion:*" format "[%d]"
zstyle ":fzf-tab:*" switch-group "<" ">"
zstyle ":fzf-tab:*" prefix ""
