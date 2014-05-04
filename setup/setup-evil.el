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

;; evil-plugin : surround
(require 'surround)
(global-surround-mode 1)

;; enable < as insertion angle
(add-hook 'c++-mode-hook
	  (lambda ()
	    (push '(?< . ("< " . " >")) surround-pairs-alist)))

;; evil-plugin : evil-nubmers
(require 'evil-numbers)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

;; evil-plugin : evil-matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)

(provide 'setup-evil)
