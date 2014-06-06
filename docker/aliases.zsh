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

