;; Set Directory Path
(setq dir/site-lisp (concat user-emacs-directory "site-lisp/")
      dir/setup (concat user-emacs-directory "setup/")
      dir/cache (concat user-emacs-directory "cache/"))

(add-to-list 'load-path dir/site-lisp)
(add-to-list 'load-path dir/setup)

;; Use common-lisp
(require 'cl)

;; Setup site-lisp
(mapc 'require '(
		 setup-default
		 setup-custom
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
		 setup-windmove
		 setup-buffcycle
		 setup-windows
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
		 setup-org
		 setup-80-column
		 setup-auto-complete
		 ))

;; Setup keybinding and alias
(require 'setup-alias)
