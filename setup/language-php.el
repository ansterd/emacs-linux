(require 'php-mode)

;; boris
;; (require 'php-boris-minor-mode)
;; (add-hook 'php-mode-hook 'php-boris-minor-mode)

(defun custom:php-mode-init ()
  "Set some buffer-local variables."
  (setq case-fold-search t) 
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2)
  ;;(c-set-offset 'arglist-cont 0)
  ;;(c-set-offset 'arglist-intro '+)
  ;;(c-set-offset 'case-label 2)
  ;;(c-set-offset 'arglist-close 0))
  (fci-mode 1))
(add-hook 'php-mode-hook 'custom:php-mode-init)

(provide 'language-php)
