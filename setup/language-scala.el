;; install scala related packages
(packages-install '(scala-mode2
		   ensime))

;; per mode config
(eval-after-load "scala-mode2"
  '(progn
     ;; setup ensime
     (require 'scala-mode2)
     (require 'ensime)
     (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
     ;;; disable overrided auto-complete of ensime
     ;;; (setq ensime-ac-override-settings nil)
     
     ;; setup auto indent after inserting {
     (sp-local-pair 'scala-mode "{" nil :post-handlers
		    '((custom:create-newline-and-enter-sexp "RET")))
     
     ;; per buffer config
     ;;; (defun custom:scala-buffer-config ()
       ;;; fill column indicator off
       ;;; (fci-mode))
     
     ;;(add-hook 'scala-mode-hook 'custom:scala-buffer-config))
     ))

(provide 'language-scala)
