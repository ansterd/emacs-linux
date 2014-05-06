;; Javascript & Node.js
;; (require 'auto-complete)
;; (require 'auto-complete-config)

;; (autoload 'js2-mode "js2-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; (defun custom:javascript-mode-config ()
;;   (yas-activate-extra-mode 'js-mode)
;;   (fci-mode 1)
;;   (add-to-list 'ac-sources 'ac-source-semantic)
;;   (add-to-list 'ac-sources 'ac-source-yasnippet))

;; (custom-set-variables  
;;  '(js2-basic-offset 2)
;;  '(js2-bounce-indent-p nil))

;; (setq-default js2-global-externs '("jQuery"
;; 				   "$"
;; 				   "module"
;; 				   "require"
;; 				   "buster"
;; 				   "sinon"
;; 				   "assert"
;; 				   "refute"
;; 				   "setTimeout"
;; 				   "clearTimeout"
;; 				   "setInterval"
;; 				   "clearInterval"
;; 				   "location"
;; 				   "__dirname"
;; 				   "console"
;; 				   "JSON"))

;; (add-hook 'js2-mode-hook 'custom:javascript-mode-config)
;; ;; js2-refactor
;; (require 'js2-refactor)
;; (js2r-add-keybindings-with-prefix "C-c C-m")


(provide 'language-javascript)
