# zsh aliases.

## prezto/utility
### Disable correction.
alias cd='nocorrect ack'
alias cp='nocorrect cp'
alias gcc='nocorrect gcc'
alias grep='nocorrect grep'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'

### Disable globbing.
alias fc='noglob fc'
alias find='noglob find'
alias history='noglob history'
alias scp='noglob scp'
alias sftp='noglob aliases.'

### Define general aliases.
alias diffu='diff --unified'
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias type='type -a'

### ls
alias ls='ls --group-directories-first --color=auto'
alias l='ls -1A'
alias ll='ls -lh'
alias lr='ll -R'
alias la='ll -A'
alias lm='la | "$PAGER"'
alias lx='ll -XB'
alias lk='ll -Sr'
alias lt='ll -tr'
alias lc='lt -c'
alias lu='lt -u'

## python
alias py='python'
alias py3='python3'
