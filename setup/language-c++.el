(require 'auto-complete)
(require 'auto-complete-config)

(defun c++/ac-c-headers ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories 
	       "/usr/include/c++/4.8"))

(defun language/c-mode-common-hook ()
  (c++/ac-c-headers)
  (c-toggle-auto-state 1))

(add-hook 'c-mode-common-hook 'language/c-mode-common-hook)

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'language-c++)
