(setq buffcycle-directory 
      (concat user-emacs-directory "site-lisp/buffcycle")) 
(add-to-list 'load-path buffcycle-directory)
(require 'buffcycle)

(provide 'setup-buffcycle)
