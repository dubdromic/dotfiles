(projectile-global-mode 1)
(setq projectile-enable-caching 1)
(setq projectile-indexing-method 'git)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "C-x t") 'helm-projectile)
(global-set-key (kbd "C-c p s") 'helm-projectile-switch-project)

;;(global-set-key (kbd "C-x t") 'projectile-find-file)
;;(global-set-key (kbd "C-x b") 'projectile-switch-to-buffer)
