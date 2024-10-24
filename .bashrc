#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Programming
alias code='cursor'

## Python
alias pip='uv pip'
alias sv='source .venv/bin/activate'
## Go
if [ -f go.mod ]; then
    export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
fi

# Add local bin to PATH
export PATH=$HOME/.local/bin:$PATH