#set the path for bin
PATH+=:~/.bin/

#TERM for the color
TERM=xterm-256color

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s cdspell

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# for the long command line
PS2=' >'

# set the PS1 environment
PS1='\033[01;35m\h-\u [\W]\n\033[00;37m'

if [ -n "$STY" ]; then
    PS1='\033[01;31m[\d \t] \033[01;33mScreen - \033[01;32m\u\033[01;37m@\033[01;35m\h \[\033[00m\][\W]\n'
fi

if [[ "$USER" == "root" ]]; then
	PS1+=' \033[01;33m#\033[00;37m ';
else
	PS1+=' $ ';
fi

if [ -f ~/.bash/bash_function ]; then
	. ~/.bash/bash_function
fi

if [ -f ~/.bash/bash_aliases ]; then
    . ~/.bash/bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# environment of bash
set -o vi
set -o ignoreeof
set completion-ignore-case on
export EDITOR=vim

d=.dircolors
test -r $d && eval "$(dircolors $d)"
