# Zsh history settings.

## Environments
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HISTSIZE=10000000
SAVEHIST=1000000

## Options
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_ALLOW_CLOBBER
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## Functions
typeset -g _last_command=""
function save_command() {
  typeset -g _last_command="${1}"
}

function remove_failed_command_history() {
  local _status="${?}"
  local _successed_status=(0 130)
  if [[ ${#_last_command} -gt 0 && ${_successed_status[(Ie)${_status}]} == 0 ]]; then
    hist -s delete -1
  fi
  if [[ ${#_last_command} -gt 0 ]]; then
    typeset -g _last_command=""
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec save_command
add-zsh-hook precmd remove_failed_command_history
