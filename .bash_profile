# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\h:\W \u\e[0;32m\]\$(parse_git_branch)\[\e[m\] $ "
#export PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(parse_git_branch)\[$WHITE\]\$ "
export PS1="\h:\W \u\[\e[00;32m\]\$(parse_git_branch)\[\e[0m\] $ "


# Bash TAB completion
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind "set completion-ignore-case on"
