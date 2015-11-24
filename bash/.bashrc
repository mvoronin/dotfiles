
umask 0077 # -rw----

#export LANG="ru_RU.UTF-8"
#export LC_ALL=""

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export EDITOR="vi"
export PAGER="less"

# set bash promt
COLOR1="\[\033[0;37m\]" # white
COLOR2="\[\033[0;32m\]" # green
COLOR3="\[\033[0;36m\]" # cyan
PS1="$COLOR2\u@$COLOR1\h [$COLOR3\W$COLOR1]$COLOR2$ $COLOR1"
PS1="$COLOR2\u@$COLOR1\h$COLOR2$ $COLOR3"

