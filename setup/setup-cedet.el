
(setq cedet-root-path (file-name-as-directory "~/.emacs.d/site-lisp/cedet/"))
(setq cache-root-path (file-name-as-directory "~/.emacs.d/cache/"))

(add-to-list 'load-path cedet-root-path)
(add-to-list 'load-path (concat cedet-root-path "contrib"))
(add-to-list 'Info-default-directory-list 
	     (concat cedet-root-path "doc/info"))

(require 'cedet-devel-load)
(require 'cedet-contrib-load)

;; Set semanticdb save directory
(setq semanticdb-default-save-directory (concat cache-root-path "semanticdb"))

;; Select submodes
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
;; (add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 
	     'global-semantic-idle-local-symbol-highlight-mode)

;; Add system include directory
;; (semantic-add-system-include emacs-builtin-package-directory 'emacs-lisp-mode)

;; advanced functionality for name completion
(require 'semantic/ia)

;; semantic C/C++ Setting
(require 'semantic/bovine/gcc)

;; Add C/C++ additional include directory

;; Use ectags
(when (cedet-ectag-version-check t)
  (semantic-load-enable-primary-ectags-support))
;; http://bbingju.wordpress.com/2013/03/21/emacs-global-gtags-source-navigation/

;; Activate semantic
(semantic-mode 1)

;; keybinding

;; Enable srecode
(global-srecode-minor-mode 1)

;; Enable tag folding
(global-semantic-tag-folding-mode t)


;; Load contrib library
(require 'eassist)

;; imenu intergration
;; (defun my-semantic-hook ()
;;   (imenu-add-to-menubar "TAGS"))
;; (add-hook 'semantic-init-hooks 'my-semantic-hook)

(provide 'setup-cedet)
