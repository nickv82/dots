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

function setjdk() {
    if [ $# -ne 0 ]; then
        removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
        if [ -n "${JAVA_HOME+x}" ]; then
            removeFromPath $JAVA_HOME
        fi
        export JAVA_HOME=`/usr/libexec/java_home -v $@`
        export PATH=$JAVA_HOME/bin:$PATH
    fi
}
    
function removeFromPath() {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
