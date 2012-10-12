function custom_git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return

  local branch=${ref#refs/heads/}
  if [ $branch = 'master' ]; then
    branch="~"
  fi
  
  echo " %{$fg_bold[blue]%}($(parse_git_dirty)$branch%{$fg[blue]%})"
}

function parse_git_dirty() {
  local SUBMODULE_SYNTAX=''
  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
        SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi
  if [[ -n $(git status -s ${SUBMODULE_SYNTAX}  2> /dev/null) ]]; then
    echo "%{$fg_bold[red]%}"
  else
    echo "%{$fg_bold[green]%}"
  fi
}

PROMPT='%{$fg[green]%}%n@%m %{$fg[yellow]%}%~$(custom_git_prompt) %{$fg_bold[white]%}$  %{$reset_color%}'
# PROMPT='%{$fg_bold[cyan]%}%C$(custom_git_prompt) %{$fg_bold[white]%}➜  %{$reset_color%}'
# RPROMPT='%n@%m'
#
PS2="> "
