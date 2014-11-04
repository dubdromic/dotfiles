(require 'helm-config)
(require 'helm-grep)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x f") 'helm-find-files)
(global-set-key (kbd "C-x t") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-unset-key (kbd "C-x c"))

(setq helm-quick-update t
      helm-buffers-fuzzy-matching t
      helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)
