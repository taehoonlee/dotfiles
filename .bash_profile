# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PS1HOSTNAME=""
if [[ $HOSTNAME != *"local"* ]]; then
        export PS1HOSTNAME="@${HOSTNAME}"
fi
export PS1="\[\e[0;97m\e[46m\] 🕐  \t \[\e[0m\]\[\e[0;97m\e[100m\] \u${PS1HOSTNAME} \[\e[0m\]\[\e[0;97m\e[43m\] 💻  \W \[\e[0;37m\] \$ \[\e[0m\]"
export CONDA_PS1_BACKUP=$PS1

export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagaced
if [ $(uname -s) == "Darwin" ]; then
        alias ls='ls -lh'
else
        alias ls='ls --color=always -lh'
fi
