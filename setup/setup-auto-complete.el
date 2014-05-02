
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")

(setq ac-comphist-file 
  (concat dir/cache "auto-complete/ac-comphist.dat")) 

(ac-config-default)

;; (setq ac-auto-start 2)

;; C/C++
;; (add-hook 'c-mode-common-hook 
;;   (lambda ()
;;     (require 'auto-complete-c-headers)))
    ;; (add-to-list 'ac-sources 'ac-source-c-headers)
    ;; (add-to-list 'achead:include-directories 
    ;; 		 "/usr/include/c++/4.8")))


(provide 'setup-auto-complete)
