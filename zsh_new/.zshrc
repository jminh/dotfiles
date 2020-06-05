source ~/.zinit/bin/zinit.zsh

zinit snippet OMZ::lib/history.zsh

zinit ice wait atinit"zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

PS1="READY > "
zinit ice wait'!0'
zinit load agkozak/agkozak-zsh-prompt

zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
