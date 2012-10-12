alias f=fg
alias count_specs='find . -name *.rb | xargs grep -h  "^[ \S]*it" | wc -l'
alias cao="cat $dotshome/bash/oneliners.sh "
alias vio="vi $dotshome/bash/oneliners.sh"
alias vic="vi $dotshome/bash/custom.sh"
alias rbs=" find . -name *.rb"
alias listModifiedFiles=" git status | grep modified | cut -f 2 -d":" "
alias lla=" ll -a"
# TODO fix
#alias listNewFiles=" git status | sed "1,/Untracked/d" | sed "1,2d" | grep ^# | cut -f 2 -d"#""
alias count_commits=" git log | grep commit | wc -l"
alias empty_spec_files='find . -name *_spec.rb | xargs grep -L "^ *it *[\"{]"'
alias br=" echo "----------------------------------------------------------------""
alias edit_snippets=" vim $dotshome/dots/vim/bundle/snippets/snippets/"
alias go_snips=" cd $dotshome/dots/vim/bundle/snippets/"
alias gotosub=" cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages "
alias start-synergyc=" synergyc -n mbp 192.168.1.100 "
alias cac="cat $dotshome/bash/custom.sh"
alias gpom="git push origin master"
#GNOME
alias op="gnome-open"
alias whereami="exit"
alias start_postgres="postgres -D /usr/local/var/postgres"
alias pyg="pygmentize -f html -O full " $1
