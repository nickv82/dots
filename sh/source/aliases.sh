# some useful aliases
alias l="ls -Gh "
alias ll="ls -ltrGh"
alias la="ls -ltrGa"

alias gs="git status"
alias cls="clear"
alias gla="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset - %C(cyan)%an %Creset: %s %Cgreen(%cr)'"
alias gl="gla -20"
alias gll="gla --graph"
alias grep="grep --color"
alias vi=vim

#rails aliases
alias filldb="rake db:fixtures:load RAILS_ENV=test"

alias tb=tback
alias tbb="tback bundle exec"
alias tbc="tback close"

alias x=tmux
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias via="vim $dotshome/sh/common/aliases.sh"
alias powerlab="ipython qtconsole --pylab=inline"
alias pyclean="autopep8 --ignore=E302,E401 --max-line-length=100"
