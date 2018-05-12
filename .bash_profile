# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Suppress TensorFlow warnings
export TF_CPP_MIN_LOG_LEVEL=2 # suppress TensorFlow warnings

# Variables for TensorFlow Serving Compile
export PYTHON_BIN_PATH="/home/$USER/.conda/envs/$USER/bin/python"
export PYTHON_LIB_PATH="/home/$USER/.conda/envs/$USER/lib/python2.7/site-packages"

export PS1HOSTNAME=""
if [[ $HOSTNAME != *"local"* ]]; then
        export PS1HOSTNAME="@${HOSTNAME}"
fi
export PS1="\[\e[0;97m\e[48;5;32m\] 🕐  \t \[\e[0m\]\[\e[0;97m\e[100m\] \u${PS1HOSTNAME} \[\e[0m\]\[\e[0;97m\e[48;5;203m\] 💻  \W \[\e[0;37m\] \$ \[\e[0m\]"
export CONDA_PS1_BACKUP=$PS1

export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagaced
if [ $(uname -s) == "Darwin" ]; then
        alias ls='ls -lh'
else
        alias ls='ls --color=always -lh'
fi
