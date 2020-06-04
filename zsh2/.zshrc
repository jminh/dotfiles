source ~/dotfiles/zsh2/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle tmux
antigen bundle sprunge

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history-substring-search
antigen bundle per-directory-history

antigen bundle command-not-found

antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell
antigen theme bira

# Tell Antigen that you're done.
antigen apply

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# emacs alias
alias e='emacsclient -t'
alias ec='emacsclient -c'

export PATH=$HOME/bin:$PATH


alias tb="nc termbin.com 9999"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
