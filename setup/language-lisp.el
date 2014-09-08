;; Common Lisp and Elisp
(defun custom:lisp-config()
  ;; (fci-mode 1)
  (flycheck-mode 1)
  (eldoc-mode))

;; disable flycheck docs warning
(eval-after-load 'flycheck
  '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

(eval-after-load "auto-complete"
       '(add-to-list 'ac-modes 'slime-repl-mode))

(eval-after-load "lisp-mode"
  '(progn
     (add-hook 'lisp-mode-hook 'custom:lisp-config)
     ;; Use sbcl as lisp impl
     (setq inferior-lisp-program "sbcl")
     (load (expand-file-name "~/quicklisp/slime-helper.el"))
     ;; ac-slime
     (add-hook 'slime-mode-hook 'set-up-slime-ac)
     (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)))

(eval-after-load "elisp-mode"
  '(progn
     (add-hook 'emacs-lisp-mode-hook 'custom:lisp-config)))

(provide 'language-lisp)
