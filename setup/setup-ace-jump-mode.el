(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

(provide 'setup-ace-jump-mode)
