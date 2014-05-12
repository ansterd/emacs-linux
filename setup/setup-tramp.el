(require 'tramp)
(setq tramp-default-method "ssh")
(setq password-cache t)
(setq password-cache-expiry 3600)


(provide 'setup-tramp)

