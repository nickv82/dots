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

alias bton="cp ~/.m2/settings.xml.bak ~/.m2/settings.xml"
alias btoff="rm ~/.m2/settings.xml"

alias m2on="export MAVEN_OPTS=\"-XX:+UseConcMarkSweepGC -XX:+CMSPermGenSweepingEnabled -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=128m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005\""
alias m2off="unset MAVEN_OPTS"

