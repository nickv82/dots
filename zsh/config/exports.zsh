# set up term and lang
#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        #export TERM='xterm-256color'
#else
        #export TERM='xterm-color'
#fi
export TERM='screen-256color'
export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"

# enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# add dots bin to path
export PATH=$PATH:$DOTSHOME/bin
