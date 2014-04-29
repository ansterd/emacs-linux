;; ido
(define-key ido-file-completion-map (kbd "<down>") 'ido-next-match)
(define-key ido-buffer-completion-map (kbd "<down>") 'ido-next-match)
(define-key ido-file-completion-map (kbd "<up>") 'ido-prev-match)
(define-key ido-buffer-completion-map (kbd "<up>") 'ido-prev-match)
(global-set-key (kbd "C-c i") 'ido-goto-symbol) 

[[https://github.com/tlh/emacs-config/blob/master/tlh-keys.el]]



(provide 'setup-key)
