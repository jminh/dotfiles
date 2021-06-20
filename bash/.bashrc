alias tl='tmux ls'
alias ts='tmux -2 new -s'
alias ta='tmux -2 attach -t'

# https://cyb.org.uk/2021/05/03/bash-productivity.html
export HISTIGNORE='pwd:exit:fg:bg:top:clear:history:ls:uptime:df'
export HISTCONTROL=ignorespace

export PATH=$HOME/local/prefix/gnupg-2.2.27/bin:$PATH

export PATH=$HOME/local/precompiled/startship:$PATH
# starship: the end of ~/.bashrc
eval "$(starship init bash)"
