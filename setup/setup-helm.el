(add-to-list 'load-path
	     (concat user-emacs-directory "site-lisp/helm"))
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)


(provide 'setup-helm)


