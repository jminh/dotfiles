
# useful alias

```
alias ta='tmux attach -t'
alias tl='tmux list-sessions'
alias ts='tmux new-session -s'
```

# Panes Split

Vertical split

    Ctrl + | (Ctrl + shift + |)

Horizontal split

    Ctrl + -

# Navigate panes with hjkl

C-b l

C-b h 

C-b k 

C-b j

# centos6 centos7 zsh version

cshrc
```
alias ta tmux attach -t
alias ts tmux new-session -s
alias tl tmux list-sessions

    lsb_release -a|grep 'CentOS release 6'
    if ($? == 0) then
      echo "CentOS 6"
    else
       lsb_release -a|grep 'Description'
       setenv PATH /remote/ming/bin/centos_73/compile-zsh-5.7.1/bin:$PATH
       alias ta tmux -f ~/.tmux-centos7.conf attach -t
       alias ts tmux -f ~/.tmux-centos7.conf new-session -s
       alias tl tmux -f ~/.tmux-centos7.conf list-sessions
    endif
```

```
~/.tmux-centos7.conf
  set -g default-shell /remote/ming/bin/centos_73/compile-zsh-5.7.1/bin/zsh

~/.tmux.conf
set -g default-shell /remote/ming/bin/zsh_5.7.1/bin/zsh
```
