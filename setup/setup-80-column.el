(require 'fill-column-indicator)
(setq fci-rule-width 3)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)

(provide 'setup-80-column)
