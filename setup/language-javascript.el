;; Javascript & Node.js

;; json-mode
(defun custom:json-mode-hook ()
   (setq tab-width 2))
(add-hook 'json-mode-hook 'custom:json-mode-hook)

(require 'auto-complete)

;; tern
(autoload 'tern-mode "tern.el" nil t)
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (setq tern-ac-on-dot t)
     (tern-ac-setup)))

;; js2-mode
(require 'js2-mode)
(define-key js2-mode-map (kbd "C-c j") 'tern-find-definition)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(custom-set-variables  
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil))

(setq-default js2-global-externs '("jQuery"
				   "$"
				   "module"
				   "require"
				   "buster"
				   "sinon"
				   "assert"
				   "refute"
				   "setTimeout"
				   "clearTimeout"
				   "setInterval"
				   "clearInterval"
				   "location"
				   "__dirname"
				   "console"
				   "JSON"))

;; js2-refactor
(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")

(require 'ac-js2)

(defun custom:js2-mode-config ()
  (yas-activate-extra-mode 'js-mode)
  (tern-mode t)
  (fci-mode 1)
  ;; (tags-table-mode)
  (add-to-list 'ac-sources 'ac-source-yasnippet))

(add-hook 'js2-mode-hook 'custom:js2-mode-config)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)

;; Make .tern-project file 
(defun make-tern-project ()
  (shell-command "cp ~/.emacs.d/config/.tern-project ."))

;; skewer mode setup
;; (require 'skewer-mode)
;; (skewer-setup)

(provide 'language-javascript)
