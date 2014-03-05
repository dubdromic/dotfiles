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
(load "auto-complete-defaults.el")
(load "projectile-defaults.el")
(load "ace-jump-mode.el")
(load "go-to-char-defaults.el")
(load "ido-defaults.el")
(load "tramp-defaults.el")
