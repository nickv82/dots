# some useful aliases
alias f=fg

LSCOLORPOSTFIX=""
if [[ -n "$IS_LINUX" ]]; then
    LSCOLORPOSTFIX=" --color=auto"
fi
alias l="ls -Gh$LSCOLORPOSTFIX"
alias ll="ls -Gltrh$LSCOLORPOSTFIX"
alias la="ls -Gltra$LSCOLORPOSTFIX"

alias vi=vim

alias aliases="vi $ZSH/zsh/aliases.zsh && source $ZSH/zsh/aliases.zsh"

alias count_commits=" git log | grep commit | wc -l"

alias br=" echo "----------------------------------------------------------------""

alias cdd="cd $ZSH"
