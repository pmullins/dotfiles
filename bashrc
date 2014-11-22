# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi

# Enable colors in "ls" command output
alias ls="ls -ah --color=auto"
alias ll="ls -l"

