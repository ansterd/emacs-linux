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

;; Use sbcl as lisp impl
(setq inferior-lisp-program "sbcl")
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; ac-slime
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

(provide 'language-lisp)
