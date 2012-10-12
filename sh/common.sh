# Set up some variables 
dotshome=~/dots

# add the bin folder to path
PATH=$PATH:$dotshome/bin

# make sure we are using 256 colors
export TERM="xterm-256color"
# vim is the default editor
export EDITOR="vim"

# grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# re-enable c-s and c-q 
stty -ixon -ixoff 

# source all common bash aliases and functions
for f in $dotshome/sh/source/*; do source $f; done
