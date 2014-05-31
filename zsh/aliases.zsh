# some useful aliases
alias f=fg

LSCOLORPOSTFIX=""
if [[ -n "$IS_LINUX" ]]; then
    LSCOLORPOSTFIX=" --color=auto"
fi
alias l="ls -Gh$LSCOLORPOSTFIX"
alias ll="ls -Gltrh$LSCOLORPOSTFIX"
alias la="ls -Gltra$LSCOLORPOSTFIX"

alias gs="git status -sb"
alias cls="clear"
alias gla="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset - %C(cyan)%an %Creset: %s %Cgreen(%cr)'"
alias gl="gla -20"
alias gll="gla --graph"
alias grep="grep --color"
alias vi=vim
alias gpom="git push origin master"

alias aliases="vi $ZSH/zsh/aliases.zsh && source $ZSH/zsh/aliases.zsh"

alias x=tmux

alias powerlab="ipython qtconsole --pylab=inline"

alias pyg="pygmentize -f html -O full " $1

alias count_commits=" git log | grep commit | wc -l"
alias count_specs='find . -name *.rb | xargs grep -h  "^[ \S]*it" | wc -l'

alias br=" echo "----------------------------------------------------------------""

if [[ -n "$IS_LINUX" ]]; then
    dock_prefix="sudo "
fi
alias d="$dock_prefix docker"
alias dps="d ps"
alias dpsa="dps -a"
alias dpsA="dpsa | grep Exit"
alias dpsArm="dpsa | grep Exit | awk '{print \$1}' | xargs $dock_prefix docker rm"
alias di="d images"
alias diA="d images | grep \<none\>"
alias diArm="diA | awk '{print \$3}' | xargs $dock_prefix docker rmi"

alias cdd="cd $ZSH"