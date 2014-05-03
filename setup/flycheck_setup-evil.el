(require 'evil)
(evil-mode 1)

;; (setq evil-motion-state-modes 
;;       (append evil-emacs-state-modes evil-motion-state-modes))
;; (setq evil-emacs-state-modes nil)
(defun set-mode-to-default-emacs (mode)
  (evil-set-initial-state mode 'emacs))

(mapcar 'set-mode-to-default-emacs
	'(eassist-mode
	  eshell
	  ))

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("black" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

; evil plugin
(require 'surround)
(global-surround-mode 1)


(provide 'setup-evil)
