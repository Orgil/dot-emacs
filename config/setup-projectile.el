(setq projectile-cache-file (concat cache-dir "projectile.cache"))
(setq projectile-known-projects-file (concat cache-dir "projectile-bookmarks.eld"))
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(require 'projectile)


(add-to-list 'projectile-globally-ignored-directories "elpa")
(add-to-list 'projectile-globally-ignored-directories ".cache")

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'helm-projectile)

(add-to-list 'helm-projectile-sources-list 'helm-source-projectile-recentf-list)

(provide 'setup-projectile)
