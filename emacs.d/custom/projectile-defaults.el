(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-indexing-method 'git)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "C-x t") 'projectile-find-file)
(global-set-key (kbd "C-x b") 'projectile-switch-to-buffer)
