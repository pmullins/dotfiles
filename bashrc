if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

# If fortune is installed, run a fortune
if [ -e /usr/games/fortune ]; then
    echo " "
    fortune -so
    echo " "
fi

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

export PS1="\[\e[00;36m\]\u@\h\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\] : {\$?}\n\\$ \[\e[0m\]"

# Add bash aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
