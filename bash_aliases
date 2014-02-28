#
# some more ls aliases
alias ls='ls -lhN --color '
alias ll='ls -lhS '
alias la='ls -lhAS '
#some more alias cd
alias ..='builtin cd .. && pwd && ls -la'
# cp commands
alias cp='cp -av '

# others commands

alias o='mimeopen '
alias psa='ps fauxwww'
alias rm='rm -rv '
alias tln='tail -n 0 -f '

# pip and python alias for python3 !
alias python='python3 '
alias pip='pip3'

# quicker to edit something
alias editps1='vim ~/.bash/bash_ps1'
alias editbinds='vim ~/.centerim5/binds.xml'

# python quick edit
alias shell_plus='./manage.py shell_plus'
alias runserver='./manage.py runserver'

alias bash_colors='printf "\e[%dm%d dark\e[0m \e[%d;1m%d bold\e[0m\n" {30..37}{,,,}'
alias screenshot='import ~/Pictures/Screenshot/current.png'


# others commands
alias c='clear '
alias cp='cp -av '
alias dirs='dirs -v'
alias d='dirs'
alias df='df -H'
alias dia='dia --integrated'
alias du='du -sch '
alias e='exit '
alias f='fg '
alias fdisk='fdisk -l '
alias grep='grep --color '
alias g='git'
alias ghelp='git help'
alias j='jobs '
alias less='less -R'
alias mv='mv -v '
alias o='mimeopen '
alias py='python '
alias pu='pushd '
alias po='popd '
alias ps='ps fauxwww'
alias rm='rm -rvf '
alias hibernate='sudo pm-hibernate'
alias translate='translate 26ba0 '

# all the edit
alias editps1='vim ~/.bash/bash_ps1'
alias editbinds='vim ~/.centerim5/binds.xml'
alias editnote='editor ~/.notes'
