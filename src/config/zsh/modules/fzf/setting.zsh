# Settings for "junegunn/fzf" and "Aloxaf/fzf-tab".

## Environments
export FZF_DEFAULT_OPTS="--layout=reverse --bind=ctrl-a:toggle-all,ctrl-space:toggle+down"

## Styles
zstyle ":completion:*" format "[%d]"
zstyle ":fzf-tab:*" switch-group "<" ">"
zstyle ":fzf-tab:*" prefix ""

## Functions
### `cd` to `ghq` repositories directory on `zsh`.
### Original: https://gist.github.com/sheepla/d680f1480d8c36c4290d6aabebf1abc6
function _fzf_cd_ghq() {
  local root="$(ghq root)"
  local repo="$(
    ghq list \
    | fzf --preview="eza -1a --color=always --icons --group-directories-first --git ${root}/{1}"
  )"
  local target="${root}/${repo}"
  [ -n "${target}" ] && cd "${target}"
  zle accept-line
  zle reset-prompt
}

zle -N  _fzf_cd_ghq
bindkey "^[g" _fzf_cd_ghq
