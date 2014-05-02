
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")

(setq ac-comphist-file 
  (concat dir/cache "auto-complete/ac-comphist.dat")) 

(setq ac-auto-start 2)

(ac-config-default)



(provide 'setup-auto-complete)
