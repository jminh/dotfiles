(defconst org-roam-packages '((org-roam :location elpa)
                              (org-roam-server :location elpa)))

(defun org-roam/init-org-roam-server ()
  (use-package org-roam-server
    :ensure t
    :after org-roam
    :config (setq org-roam-server-host "127.0.0.1"
                  org-roam-server-port
                  8080
                  org-roam-server-authenticate
                  nil
                  org-roam-server-export-inline-images
                  t
                  org-roam-server-serve-files
                  nil
                  org-roam-server-served-file-extensions
                  '("pdf" "mp4" "ogv")
                  org-roam-server-network-poll
                  t
                  org-roam-server-network-arrows
                  nil
                  org-roam-server-network-label-truncate
                  t
                  org-roam-server-network-label-truncate-length
                  60
                  org-roam-server-network-label-wrap-length
                  20)))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    :after org
    :hook ((org-mode . org-roam-mode)
           (after-init . org-roam--build-cache-async) ;; optional!
           )
    :custom
    (org-roam-directory "~/org-roam/")
    (org-roam-graph-viewer "/usr/bin/open")
    :init (progn
            (spacemacs/declare-prefix "ar" "org-roam")
            (spacemacs/set-leader-keys "arl" 'org-roam
              "art" 'org-roam-today "arf" 'org-roam-find-file
              "arg" 'org-roam-show-graph)
            (spacemacs/declare-prefix-for-mode 'org-mode
              "mr" "org-roam")
            (spacemacs/set-leader-keys-for-major-mode
              'org-mode "rl" 'org-roam "rt" 'org-roam-today
              "rf" 'org-roam-find-file "ri" 'org-roam-insert
              "rg" 'org-roam-show-graph))))

(defun org-roam/init-org-roam-server ()
  (use-package org-roam-server
    :ensure t
    :after org-roam
    :config (setq org-roam-server-host "127.0.0.1"
                  org-roam-server-port
                  8080
                  org-roam-server-authenticate
                  nil
                  org-roam-server-export-inline-images
                  t
                  org-roam-server-serve-files
                  nil
                  org-roam-server-served-file-extensions
                  '("pdf" "mp4" "ogv")
                  org-roam-server-network-poll
                  t
                  org-roam-server-network-arrows
                  nil
                  org-roam-server-network-label-truncate
                  t
                  org-roam-server-network-label-truncate-length
                  60
                  org-roam-server-network-label-wrap-length
                  20)))

