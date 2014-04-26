(require 'windmove)
(windmove-default-keybindings 'meta)

;; Use windcycle
(setq windcycle-directory (concat user-emacs-directory "site-lisp/windcycle/"))
(add-to-list 'load-path windcycle-directory)
(require 'windcycle)

(provide 'setup-windmove)
