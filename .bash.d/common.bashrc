########## plugin ##########
## z - jump around
# @see https://github.com/rupa/z
if [ -f ~/.local/bin/z.sh ]; then
    . ~/.local/bin/z.sh
fi

## bashmarks - Directory bookmarks for the shell
# @see https://github.com/huyng/bashmarks
if [ -f ~/.local/bin/bashmarks.sh ]; then
    . ~/.local/bin/bashmarks.sh
fi


########## alias list ##########
alias grep="grep --color=auto -n --exclude=*.svn*"
alias aptkey="sudo apt-key adv --keyserver keyserver.ubuntu.com --recv"


########## export list ##########
# encoding
export LANG=en_US.UTF-8

# path
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/.local/bin

# editor
export EDITOR=vim
export SVN_EDITOR=vim

# history
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTIGNORE="pwd:history:ls:ls -ltr:"

########## git options ##########
# prompt
# export PS1='\w$(__git_ps1 "(%s)") > '

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

########## colorize options ##########
if [ -f ~/.bash.d/colorize.bashrc ]; then
    . ~/.bash.d/colorize.bashrc
fi

if [ -f ~/.local/bin/dynmotd ]; then
    clear
    ~/.local/bin/dynmotd
fi

# TODO: personal options
