;; Javascript & Node.js

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

;; advice for tern-find-definition
(defadvice tern-find-definition (before set-mark-before-turn-jump)
  (set-mark-command))

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

(defun custom:js2-mode-config ()
  (yas-activate-extra-mode 'js-mode)
  (tern-mode t)
  (fci-mode 1)
  (add-to-list 'ac-sources 'ac-source-yasnippet)
  (add-to-list 'ac-sources 'ac-source-semantic)
  (add-to-list 'ac-sources 'ac-source-semantic-raw))

(add-hook 'js2-mode-hook 'custom:js2-mode-config)


(provide 'language-javascript)
