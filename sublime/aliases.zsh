if [[ -n "$IS_LINUX" ]]; then
    SUB_HOME="~/.config/sublime-text-3/Packages/User/"
    alias slocal="cp Preferences.sublime-settings $SUB_HOME"
    alias sremote="cp $SUB_HOME/Preferences.sublime-settings ~/dots/sublime/"
fi
