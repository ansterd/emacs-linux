;; coffee script

(defun custom:json-mode-hook ()
  (flycheck-mode 1)
  (setq tab-width 2))

(add-hook 'json-mode-hook 'custom:json-mode-hook)

;; enable auto-complete in coffee-mode
(require 'auto-complete)
(add-to-list 'ac-modes 'coffee-mode)

(defun custom:js2-mode-config ()
  (yas-activate-extra-mode 'coffee-mode)
  (fci-mode 1)
  ;; (tags-table-mode)
  (add-to-list 'ac-sources 'ac-source-yasnippet))

;; coffeescript
(custom-set-variables
 '(coffee-tab-width 2)
 '(coffee-args-compile '("-c" "--bare")))

(eval-after-load "coffee-mode"
  '(progn
     (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
     (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)))

(provide 'language-coffee)
