# External command settings in zsh.

## eza
### Aliases
alias eza="eza --icons --group-directories-first --git"
alias l="eza -1a"
alias ll="eza -l"
alias lr="ll -R"
alias la="ll -a"
alias lt="ll -T"

## fzf
### Environments
export FZF_DEFAULT_OPTS="--layout=reverse"

## Python
### Aliases
alias python="python3"
alias py="python"

## GnuPG
### Environments
export GPG_TTY="${TTY}"

