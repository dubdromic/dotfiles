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
(setq-default indicate-empty-lines t)
(line-number-mode t)
(column-number-mode t)
(delete-selection-mode 1)
(global-hl-line-mode 1)

(setq uniquify-buffer-name-style 'reverse)

(fset 'yes-or-no-p 'y-or-n-p)

(ido-mode 1)
(ido-vertical-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(global-set-key (kbd "M-m") 'magit-status)
(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-x n") 'next-buffer)
(global-set-key (kbd "C-x p") 'previous-buffer)

(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-l") 'windmove-right)

(global-set-key (kbd "M-r") 'revert-buffer)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "M-f") 'forward-to-word)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "M-S-J")
                (lambda ()
                  (interactive)
                  (join-line -1)))

(define-key global-map (kbd "RET") 'newline-and-indent)

(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;; electric indent doesn't get along with some modes
(add-hook 'yaml-mode (lambda () (electric-indent-mode -1)))

;; debugging ftw
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'rspec-mode)

(add-hook 'clojure-mode-hook 'paredit-mode)

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (setq enh-ruby-deep-indent-paren nil)))

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

(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)

;; automatically wrap isearch
(defadvice isearch-repeat (after isearch-no-fail activate)
  (unless isearch-success
    (ad-disable-advice 'isearch-repeat 'after 'isearch-no-fail)
    (ad-activate 'isearch-repeat)
    (isearch-repeat (if isearch-forward 'forward))
    (ad-enable-advice 'isearch-repeat 'after 'isearch-no-fail)
    (ad-activate 'isearch-repeat)))
