(require 'evil)
(evil-mode 1)

(setq evil-motion-state-modes 
      (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-emacs-state-modes nil)

(provide 'setup-evil)
