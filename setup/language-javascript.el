(packages-install '(js2-mode
		    js2-refactor
		    ac-js2
		    tern
		    tern-auto-complete))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(autoload 'js2-mode "js2-mode" nil t)
(autoload 'tern-mode "tern.el" nil t)

;; Make .tern-project file 
(defun make-tern-project ()
  (shell-command "cp ~/.emacs.d/config/.tern-project ."))

;; tern
(eval-after-load "tern"
  '(progn
     (require 'tern-auto-complete)
     (setq tern-ac-on-dot t)
     (tern-ac-setup)))

(eval-after-load "js2-mode"
  '(progn
     (require 'js2-mode)
     (require 'ac-js2)
     (define-key js2-mode-map (kbd "C-c j") 'tern-find-definition)

     ;; setup auto indent after inserting {
     (sp-local-pair 'js2-mode "{" nil :post-handlers
		    '((custom:create-newline-and-enter-sexp "RET")))

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


     (defun custom:js2-mode-config ()
       (yas-activate-extra-mode 'js-mode)
       (tern-mode t)
       (fci-mode 1)
       (flycheck-mode 1)
       (add-to-list 'ac-sources 'ac-source-yasnippet))

     (add-hook 'js2-mode-hook 'custom:js2-mode-config)
     (add-hook 'js2-mode-hook 'ac-js2-mode)
     (setq ac-js2-evaluate-calls t)

     (require 'js2-refactor)
     (js2r-add-keybindings-with-prefix "C-c C-m")
     ))

(provide 'language-javascript)
