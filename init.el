(add-to-list 'load-path (concat user-emacs-directory "site-lisp"))
(add-to-list 'load-path (concat user-emacs-directory "setup"))

;; Use common-lisp
(require 'cl)

;; Setup site-lisp
(mapc 'require '(
		 setup-default
		 setup-function
		 setup-cedet
		 setup-package))

;; Install packages from MELPA
(defun init-packages ()
  (packages-install
   '(evil
     markdown-mode
     ace-jump-mode
     icicles
     ido-vertical-mode
     ido-at-point
     ido-ubiquitous
     flx-ido
     smex
     expand-region
     helm
     powerline
     f
     frame-restore
     bookmark+
     org
     fill-column-indicator
     thingatpt+
     )))

(condition-case nil
    (init-packages)
  (error
   (package-refresh-contents)
   (init-packages)))

;; Setup packages, builtin libraries
(mapc 'require '(setup-evil
		 setup-ido
		 setup-icomplete-mode
		 setup-dropbox
		 setup-font
		 setup-ace-jump-mode
		 setup-smex
		 setup-expand-region
		 setup-helm
		 setup-thingatpt
		 setup-powerline
		 setup-uniquify
		 setup-bookmark
		 setup-recentf
		 setup-windmove
		 setup-buffcycle
		 setup-windows
		 setup-org
		 setup-80-column
		 ))

;; setup-icicles
;; setup-frame
;; setup-desktop

;; TODO : semantic
