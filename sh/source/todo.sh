
# for use with taskwarrior
alias edit-task-aliases="vim $dotshome/sh/common/todo.sh"

alias -g @doc=proj:doc

alias t=task
alias -g @buy=project:buy
alias -g @doc=project:doc


tsync() {
  # first backup
  rsync -rv ~/.task/* ~/.task_backup

  # merge
  task merge ssh://npiv@agillo.org/~/.task/

  # push
  task push ssh://npiv@agillo.org/~/.task/
}
