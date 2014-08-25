(require 'auto-complete)
(require 'auto-complete-config)

;; install packages
(require 'setup-package)

(packages-install '(auto-complete-c-headers))

(defun c++/ac-c-headers ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories 
	       "/usr/include/c++/4.8"))

(defun language/c-mode-common-hook ()
  (c++/ac-c-headers))
;;(c-toggle-auto-state 1))

(add-hook 'c-mode-common-hook 'language/c-mode-common-hook)

;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; C/C++ semantic setting
(defun custom/c-mode-common-hook ()
  ;; (add-to-list 'ac-sources 'ac-source-semantic)
  (add-to-list 'ac-sources 'ac-source-gtags) 
  (add-to-list 'ac-sources 'ac-source-semantic) 
  (add-to-list 'ac-sources 'ac-source-semantic-raw)
  (setq ac-auto-start nil)
  (local-set-key (kbd "C-c t") 'eassist-switch-h-cpp))

(add-hook 'c++-mode-hook 'custom/c-mode-common-hook)
(add-hook 'c-mode-hook 'custom/c-mode-common-hook)

(provide 'language-c++)
