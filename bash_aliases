# some more ls aliases
alias ls="ls -lhN --color "
alias ll="ls -lhS "
alias la="ls -lhAS "

#some more alias cd
alias ..="builtin cd .. && pwd && ls -la"
alias ...="builtin cd ../.. && pwd && ls -la"
alias ....="builting cd ../../.. && pwd && ls -la"
alias cd-="cd -"
alias cdp="builtin cd ~/Projects "
alias cds="builtin cd ~/Sites "
alias cds="builtin cd ~/School "
alias cdd="builtin cd ~/Documents "
alias cde="builtin cd ~/Documents/ebooks "
alias cdt="builtin cd ~/tmp/ "

# cp commands
alias cp="cp -av "

# others commands
alias a="acpi "
alias ack="ack-grep -a "
alias c="clear "
alias dirs="dirs -v"
alias d="dirs"
alias df="df -H"
alias dia="dia --integrated"
alias du='du -sch '
alias e="exit "
alias f="fg "
alias fdisk="fdisk -l "
alias grep='grep --color '
alias g='git'
alias ghelp='git help'
alias j="jobs "
alias l="ls -lhN --color "
alias less="less -R"
alias m="make; make clean "
alias mv="mv -v "
alias o="xdg-open "
alias py="python "
alias pu="pushd "
alias po="popd "
alias ps="ps fauxwww"
alias psa="ps fauxwww"
alias rm='rm -rvf '
alias t='task '
alias tln='tail -n 0 -f '
alias xpdf="xpdf -z 125 -cont -fullscreen "
alias hibernate="sudo pm-hibernate"
alias translate="translate 26ba0 "

# all the edit
alias editps1="vim ~/.bash/bash_ps1"
alias editbinds="vim ~/.centerim5/binds.xml"
alias editnote='editor ~/.notes'
