# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
HISTCONTROL=ignorespace:erasedups
export PATH=$PATH:$HOME/.local/bin
export EDITOR="vim"

# Color LS output to differentiate between directories and files
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLOR=""

export PS1=$'___________________ \h | \u \w \n$ '
