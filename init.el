(add-to-list 'load-path (concat user-emacs-directory "site-lisp"))
(add-to-list 'load-path (concat user-emacs-directory "setup"))

;; Use common-lisp
(require 'cl)

;; Setup site-lisp
(mapc 'require '(setup-default
		 setup-cedet
		 setup-package))

;; Install packages from MELPA
(defun init-packages ()
  (packages-install
   'evil))

(condition-case nil
    (init-packages)
  (error
   (package-refresh-contents)
   (init-packages)))

;; Setup packages, builtin libraries
(mapc 'require '(setup-evil
		 setup-ido
		 setup-icomplete-mode))

;; TODO : save desktop, session, windows
;; TODO : semantic
