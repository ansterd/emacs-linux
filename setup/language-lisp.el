;; Common Lisp
(defun custom:common-lisp-config()
  (fci-mode 1)
  (eldoc-mode))

;; Emacs Lisp
(defun custom:elisp-config ()
  (fci-mode 1)
  (eldoc-mode))

(add-hook 'emacs-lisp-mode-hook 'custom:elisp-config)
(add-hook 'lisp-mode-hook 'custom:common-lisp-config)

(provide 'language-lisp)
