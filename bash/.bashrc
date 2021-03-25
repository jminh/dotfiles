alias tl='tmux ls'
alias ts='tmux -2 new -s'
alias ta='tmux -2 attach -t'

export PATH=$HOME/local/prefix/gnupg-2.2.27/bin:$PATH

export PATH=$HOME/local/precompiled/startship:$PATH
# starship: the end of ~/.bashrc 
eval "$(starship init bash)"
