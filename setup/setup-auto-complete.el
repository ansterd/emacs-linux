(setq dir/auto-complete 
      (concat dir/site-lisp "auto-complete/"))
(add-to-list 'load-path dir/auto-complete)

(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-dictionary-directories 
	     (concat dir/auto-complete "ac-dict"))

;; C/C++
(add-hook 'c-mode-common-hook 
  (lambda ()
    (require 'auto-complete-c-headers)
    (add-to-list 'ac-sources 'ac-source-c-headers)
    (add-to-list 'achead:include-directories 
		 "/usr/include/c++/4.8")))

(provide 'setup-auto-complete)
