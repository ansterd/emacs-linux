(setq cedet-root-path (file-name-as-directory "~/.emacs.d/site-lisp/cedet/"))
(setq cache-root-path (file-name-as-directory "~/.emacs.d/cache/"))

(add-to-list 'load-path cedet-root-path)
(add-to-list 'load-path (concat cedet-root-path "contrib"))

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

;; Add include directory
;; (semantic-add-system-include emacs-builtin-package-directory 'emacs-lisp-mode)


;; Activate semantic
(semantic-mode 1)

;; keybinding

;; Enable srecode
(global-srecode-minor-mode 1)

;; Enable tag folding
(global-semantic-tag-folding-mode t)

;; Load contrib library
(require 'eassist)

(provide 'setup-cedet)
