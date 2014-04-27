(setq windows-installed-dir
      (concat user-emacs-directory "site-lisp/windows"))

(add-to-list 'load-path windows-installed-dir)

(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

;; Use revive.el 
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)

(add-hook 'kill-emacs-hook 'win-save-all-configurations)
(add-hook 'after-init-hook 'win-load-all-configurations)

(provide 'setup-windows)
