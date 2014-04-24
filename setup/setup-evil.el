(require 'evil)
(evil-mode 1)
(setq w32-enable-caps-lock nil)
(global-set-key [capslock] 'evil-force-normal-state)

(provide 'setup-evil)
