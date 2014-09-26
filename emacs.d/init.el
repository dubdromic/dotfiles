(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'tomorrow-night-theme)
(require 'pallet)
(require 'ruby-end)
(require 'misc)
(require 'uniquify)
(require 'flx-ido)
(require 'smooth-scrolling)

(global-font-lock-mode 1)

(load "defaults.el")
(load "auto-complete-defaults.el")
(load "ag-defaults.el")
(load "coffee-mode-defaults.el")
(load "projectile-defaults.el")
(load "ace-jump-mode.el")
(load "go-to-char-defaults.el")
(load "helm-defaults.el")
(load "ido-defaults.el")
(load "org-mode-defaults.el")
(load "tramp-defaults.el")
(load "syntax-table.el")
(load "smooth-scrolling-defaults.el")
(load "erc-defaults.el")

;; robe-mode needs rbenv goodness
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "HOME") "/Bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-lein-command "/home/corin/Bin/lein")
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-modules (quote (button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notifications readonly ring services stamp track)))
 '(erc-nick "dubdromic")
 '(magit-item-highlight-face (quote bold))
 '(org-agenda-files (quote ("~/Org/RT")))
 '(rspec-key-command-prefix (kbd "M-s"))
 '(rspec-use-rake-when-possible nil)
 '(rspec-use-zeus-when-possible t)
 '(safe-local-variable-values (quote ((buffer-file-coding-system . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(enh-ruby-string-delimiter-face ((t nil))))
