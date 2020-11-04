
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

# save tmux state automatically

For multiple machines, use $HOSTNAME to seperate the log files.

```
set -g @resurrect-dir '$HOME/.tmux/$HOSTNAME'
set -g @continuum-save-interval '15'
set -g @continuum-restore 'on'

set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
```

https://github.com/tmux-plugins/tmux-resurrect/pull/197
https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/save_dir.md

# save tmux state manually

```
./scripts/tmux_save
```

https://github.com/tmux-plugins/tmux-resurrect

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
