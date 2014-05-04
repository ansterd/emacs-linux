(setq windows-installed-dir
      (concat user-emacs-directory "site-lisp/windows"))

(add-to-list 'load-path windows-installed-dir)


;; Use revive.el 
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)

(add-hook 'kill-emacs-hook 'save-current-configuration)
(add-hook 'after-init-hook 'resume)

(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

(provide 'setup-windows)
