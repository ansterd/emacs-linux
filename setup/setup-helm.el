(add-to-list 'load-path
	     (concat user-emacs-directory "site-lisp/helm"))
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)

;; use TAB as execute persistent action in helm mode
(add-hook 'helm-mode-hook
    (lambda () (local-set-key [tab] 'helm-execute-persistent-action)))

(provide 'setup-helm)


