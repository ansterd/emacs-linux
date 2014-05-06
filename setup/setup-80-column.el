(require 'fill-column-indicator)
(setq fci-rule-width 3)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)
(setq fci-rule-color "darkblue")

(provide 'setup-80-column)
