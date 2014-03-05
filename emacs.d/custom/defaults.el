(defvar backup-dir (expand-file-name "~/.tmp/"))
(defvar autosave-dir (expand-file-name "~/.tmp/"))

(setq backup-inhibited t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(defun startup-echo-area-message () "Ready")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode 0)
(show-paren-mode t)

(setq uniquify-buffer-name-style 'reverse)

(fset 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)
(global-visual-line-mode 1)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "M-f") 'forward-to-word)
(global-set-key (kbd "C-x o") 'switch-window)

;;(define-key global-map (kbd "RET") 'newline-and-indent)

;; enh-ruby-mode doesn't do erb highlighting as well
(add-to-list 'auto-mode-alist '("\\.erb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . rainbow-mode))

;; electric indent doesn't get along with some modes
(add-hook 'sass-mode (lambda () (electric-indent-mode -1)))
(add-hook 'yaml-mode (lambda () (electric-indent-mode -1)))

;; debugging ftw
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; move to newly-created split
(global-set-key "\C-x2" (lambda ()
			  (interactive)
			  (split-window-vertically)
			  (other-window 1)))
(global-set-key "\C-x3" (lambda ()
			  (interactive)
			  (split-window-horizontally)
			  (other-window 1)))

(defadvice save-buffer (before save-buffer-always activate)
  "always save buffer"
  (set-buffer-modified-p t))
