* useful alias

#+BEGIN_EXAMPLE
  alias ta='tmux attach -t'
  alias tl='tmux list-sessions'
  alias ts='tmux new-session -s'
#+END_EXAMPLE

* Panes Split

Vertical split

#+BEGIN_EXAMPLE
  Ctrl + | (Ctrl + shift + |)
#+END_EXAMPLE

Horizontal split

#+BEGIN_EXAMPLE
  Ctrl + -
#+END_EXAMPLE

* Navigate panes with hjkl

C-b l

C-b h

C-b k

C-b j

* save tmux state automatically

For multiple machines, use $HOSTNAME to seperate the log files.

#+BEGIN_EXAMPLE
  set -g @resurrect-dir '$HOME/.tmux/$HOSTNAME'
  set -g @continuum-save-interval '15'
  set -g @continuum-restore 'on'

  set -g @plugin 'tmux-plugins/tmux-resurrect'
  set -g @plugin 'tmux-plugins/tmux-continuum'
#+END_EXAMPLE

https://github.com/tmux-plugins/tmux-resurrect/pull/197
https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/save_dir.md

* save tmux state manually

#+BEGIN_EXAMPLE
  ./scripts/tmux_save
#+END_EXAMPLE

https://github.com/tmux-plugins/tmux-resurrect

* setup tpm

https://github.com/tmux-plugins/tpm

Clone TPM

#+BEGIN_EXAMPLE
  $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#+END_EXAMPLE

If you're in tmux

#+BEGIN_EXAMPLE
  tmux source ~/.tmux.conf
#+END_EXAMPLE

Managing plugins via the command line

#+BEGIN_EXAMPLE
  ~/.tmux/plugins/tpm/bin/install_plugins

  ~/.tmux/plugins/tpm/bin/update_plugins all
  ~/.tmux/plugins/tpm/bin/update_plugins tmux-sensible
#+END_EXAMPLE

* centos6 centos7 zsh version

cshrc

#+BEGIN_EXAMPLE
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
#+END_EXAMPLE

#+BEGIN_EXAMPLE
  ~/.tmux-centos7.conf
    set -g default-shell /remote/ming/bin/centos_73/compile-zsh-5.7.1/bin/zsh

  ~/.tmux.conf
  set -g default-shell /remote/ming/bin/zsh_5.7.1/bin/zsh
#+END_EXAMPLE
