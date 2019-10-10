# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$HOME/.local/bin:$HOME/bin:$PATH

alias pyth="python3.7"
alias sch="mit-scheme"
alias pls="sudo !!"
