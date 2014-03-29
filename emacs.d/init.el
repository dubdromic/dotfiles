(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'tomorrow-day-theme)
(require 'pallet)
(require 'ruby-end)
(require 'misc)
(require 'uniquify)

(load "defaults.el")
(load "coffee-mode-defaults.el")
(load "projectile-defaults.el")
(load "ace-jump-mode.el")
(load "go-to-char-defaults.el")
(load "ido-defaults.el")
(load "tramp-defaults.el")
(load "syntax-table.el")

;; robe-mode needs rbenv goodness
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "HOME") "/Bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(org-agenda-files (quote ("~/Org/RT")))
 '(rspec-key-command-prefix (kbd "M-s"))
 '(rspec-use-zeus-when-possible t))
