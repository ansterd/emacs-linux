(require 'auto-complete)
(require 'auto-complete-config)

(add-hook 'c-mode-common-hook 
  (lambda ()
    (require 'auto-complete-c-headers)
    (add-to-list 'ac-sources 'ac-source-c-headers)
    (add-to-list 'achead:include-directories 
    		 "/usr/include/c++/4.8")))

(provide 'language-c++)
