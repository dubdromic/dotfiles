;; Much of this was ripped from better-defaults.el
;; http://github.com/technomancy/better-defaults

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(add-to-list 'load-path "~/.emacs.d/theme")

;; Stuff we need
(require 'uniquify)
(require 'web-mode)

;; Startup
(defun startup-echo-area-message () "Ready")
(setq magit-last-seen-setup-instructions "1.4.0")
(load-theme 'solarized-light t)

;; Auto-backup
(defvar backup-dir (expand-file-name "~/.tmp/"))
(defvar autosave-dir (expand-file-name "~/.tmp/"))
(setq backup-inhibited t)

;; Sane interface defaults
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

;; Indentation/parsing
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

;; File navigation
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ag-reuse-buffers 't)
(setq uniquify-buffer-name-style 'forward)
(projectile-global-mode 1)
(setq projectile-enable-caching 1)
(setq projectile-indexing-method 'git)
(setq projectile-completion-system 'ido)
(setq helm-buffers-fuzzy-matching t
      helm-split-window-in-side-p t)
(setq tramp-default-method "rsync")
(add-hook 'find-file-hook
          (lambda ()
            (when (file-remote-p default-directory)
              (setq-local projectile-mode-line " Projectile"))))

;; Key bindings
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x t") 'helm-projectile)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-m") 'magit-status)
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "C-x o") 'switch-window)

;; Set exec path for rspec-mode
(setenv "PATH"
        (concat
         (getenv "HOME") "/.rbenv/shims:"
         (getenv "HOME") "/.rbenv/bin:"
         (getenv "HOME") "/Bin:"
         (getenv "PATH")))
(setq exec-path
      (cons (concat
             (getenv "HOME") "/.rbenv/shims")
            (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

;; Various other minor defaults
(delete-selection-mode 1)
(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      ediff-window-setup-function 'ediff-setup-windows-plain
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

(custom-set-variables
 '(css-indent-offset 2)
 '(magit-use-overlays nil)
 '(magit-item-highlight-face (quote bold))
 '(rspec-key-command-prefix (kbd "M-s"))
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil))
