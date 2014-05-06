
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")

(setq ac-comphist-file 
  (concat dir/cache "auto-complete/ac-comphist.dat")) 

(setq ac-auto-start 2)
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)

(ac-config-default)

(provide 'setup-auto-complete)

