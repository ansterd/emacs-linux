(packages-install '(projectile))

(require 'projectile)

;; Global mode
(projectile-global-mode)

;; Enable indext caching
(setq projectile-enable-caching t)

;; Intergrate perspective
;; (require 'persp-projectile)
;; (define-key projectile-mode-map (kbd "C-c p s") 'projectile-persp-switch-project)

(provide 'setup-projectile)
