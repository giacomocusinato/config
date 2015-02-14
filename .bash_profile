# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[00;38m\]>\[\e[0m\] \[\e[00;31m\]\h\[\e[0m\]\[\e[00;38m\]:\[\e[0m\]\[\e[01;38m\]\W\[\e[0m\]\$(parse_git_branch) \[\e[00;37m\]\\$\[\e[0m\] "


# Bash TAB completion
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind "set completion-ignore-case on"