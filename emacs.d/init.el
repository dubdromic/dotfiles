;; Much of this was ripped from better-defaults.el
;; http://github.com/technomancy/better-defaults

(require 'cask "/usr/share/cask/cask.el")
(cask-initialize)

;; Stuff we need
(require 'uniquify)
(require 'web-mode)
(require 'tramp)
(require 'flx-ido)
(require 'helm-projectile)
(autoload 'zap-up-to-char "misc" t)

;; Environmental setup
(defun startup-echo-area-message () "Ready")
(load-theme 'solarized-light t)
(setq-default gc-cons-threshold 10000000)
(setq backup-inhibited t)
(setq auto-save-default nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-font-lock-mode 1)
(global-subword-mode 1)
(setq ruby-use-smie nil)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(show-paren-mode 1)
(setq scroll-step 1)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; Custom modes
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))

;; File navigation
(projectile-global-mode 1)
(ido-mode t)
(flx-ido-mode t)
(setq ido-enable-flex-matching t)
(setq ag-reuse-buffers 't)
(setq uniquify-buffer-name-style 'forward)
(projectile-global-mode 1)
(setq projectile-enable-caching 1)
(setq projectile-indexing-method 'git)
(setq projectile-completion-system 'ido-flx)
(setq helm-buffers-fuzzy-matching t
      helm-split-window-in-side-p t)

;; Key bindings
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x v") 'helm-projectile)
(global-set-key (kbd "C-x t") 'helm-projectile-find-file)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-x o") 'switch-window)

;; TRAMP/remote booster seat
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
(add-hook 'find-file-hook
          (lambda ()
            (when (file-remote-p default-directory)
              (setq-local projectile-mode-line " Projectile"))))
(setq vc-ignore-dir-regexp
      (format "\\(%s\\)\\|\\(%s\\)"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))
(setq tramp-default-method "rsync")

;; Various other minor defaults
(delete-selection-mode 1)
(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      ediff-window-setup-function 'ediff-setup-windows-plain
      backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

(custom-set-variables
 '(css-indent-offset 2)
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil))
