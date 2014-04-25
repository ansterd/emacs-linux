(require 'evil)
(evil-mode 1)

;; evil-force-normal-state : [capslock]
(if (eq window-system 'x)
    (shell-command "xmodmap -e 'clear Lock' -e 'keycode 66 = F13'"))
(global-set-key [f13] 'evil-force-normal-state)

(provide 'setup-evil)
