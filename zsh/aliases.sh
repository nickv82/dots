# some useful aliases
alias f=fg

LSCOLORPOSTFIX=""
if [[ -n "$IS_LINUX" ]]; then
    LSCOLORPOSTFIX=" --color=auto"
fi
alias l="ls -Gh$LSCOLORPOSTFIX"
alias ll="ls -Gltrh$LSCOLORPOSTFIX"
alias la="ls -Gltra$LSCOLORPOSTFIX"

alias gs="git status"
alias cls="clear"
alias gla="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset - %C(cyan)%an %Creset: %s %Cgreen(%cr)'"
alias gl="gla -20"
alias gll="gla --graph"
alias grep="grep --color"
alias vi=vim
alias gpom="git push origin master"

#rails aliases
alias filldb="rake db:fixtures:load RAILS_ENV=test"

alias tb=tback
alias tbb="tback bundle exec"
alias tbc="tback close"

alias x=tmux
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias via="vim $dotshome/sh/source/aliases.sh"
alias powerlab="ipython qtconsole --pylab=inline"
alias pyclean="autopep8 --ignore=E302,E401 --max-line-length=100"

alias start_postgres="postgres -D /usr/local/var/postgres"
alias pyg="pygmentize -f html -O full " $1

alias count_commits=" git log | grep commit | wc -l"
alias empty_spec_files='find . -name *_spec.rb | xargs grep -L "^ *it *[\"{]"'
alias count_specs='find . -name *.rb | xargs grep -h  "^[ \S]*it" | wc -l'

alias br=" echo "----------------------------------------------------------------""
