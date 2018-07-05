# Enable colors in "ls" command output
alias ls="ls -ah --color=auto"
alias ll="ls -l"

alias grep="grep --color=auto"

# Interactive...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias nano='nano -w'

# force tmux to 256 colors and to reattach to the first suspended session if one exists
alias tmux='tmux -2 -u attach -t 0 || tmux -2 new'
