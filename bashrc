if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

# If fortune is installed, run a fortune
if [ -e /usr/games/fortune ]; then
    fortune -so
    echo " "
fi

# Enable colors in "ls" command output
alias ls="ls -ah --color=auto"
alias ll="ls -l"

alias grep="grep --color=auto"

# Interactive...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias nano='nano -w'

# Prompt

# default bash_history is 500
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=ignoredups

# vim vim vim
export EDITOR=`which vim`

# less is more
export PAGER=`which less`

# prepend $HOME/bin to the path if it exists
if [ -e $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

# nice prompt
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '


