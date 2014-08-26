
;; auto indent after inserting {
(sp-local-pair 'css-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(provide 'language-css)
