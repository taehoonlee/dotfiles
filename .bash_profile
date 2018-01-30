export PS1HOSTNAME=""
if [[ $HOSTNAME != *"MacBook-Pro"* ]]; then
        export PS1HOSTNAME="@${HOSTNAME}"
fi
export PS1="\[\e[0;97m\e[46m\] 🕐  \t \[\e[0m\]\[\e[0;97m\e[100m\] \u${PS1HOSTNAME} \[\e[0m\]\[\e[0;97m\e[43m\] 💻  \W \[\e[0;37m\] \$ \[\e[0m\]"
export CONDA_PS1_BACKUP=$PS1
