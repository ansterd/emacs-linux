(packages-install '(smartparens))

(require 'smartparens-config)
(smartparens-global-mode 1)

(defun custom:create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

;; No smartparens in REPL
(add-to-list 'sp-ignore-modes-list 'slime-repl-mode)

(provide 'setup-smartparens)
