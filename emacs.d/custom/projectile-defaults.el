(projectile-global-mode)
(setq projectile-enable-caching 1)
(setq projectile-indexing-method 'git)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "C-x t") 'projectile-find-file)
(global-set-key (kbd "C-x b") 'projectile-recentf)
