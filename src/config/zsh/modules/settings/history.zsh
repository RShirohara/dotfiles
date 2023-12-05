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
typeset -g _hist_executed="false"
typeset -g -a _hist_stack=()

function save_command_executed() {
  local _command="${1}"
  if [[ ${#_command} -gt 0 ]]; then
    typeset -g _hist_executed="true"
  fi
}

function save_failed_command() {
  local _last_status="${?}"
  local _succeeded_status=(0 130)

  if [[ "${_hist_executed}" == "false" ]]; then
    return 0
  fi

  local _formatted_command="$(hist list -1 | cut -d" " -f"2-")"
  if [[ ${_succeeded_status[(Ie)${_last_status}]} -eq 0 ]]; then
    typeset -g -a _hist_stack=(${_hist_stack} ${_formatted_command})
  else
    typeset -g -a _hist_stack=(${_hist_stack:#${_formatted_command}})
  fi

  typeset -g _hist_executed="false"
}

function clean_failed_command() {
  for command in ${_hist_stack}; do
    hist -f -q delete "${command}"
  done
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec save_command_executed
add-zsh-hook precmd save_failed_command
add-zsh-hook zshexit clean_failed_command
