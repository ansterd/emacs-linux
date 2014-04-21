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

;; Activate semantic
(semantic-mode 1)

;; https://github.com/alexott/emacs-configs/blob/master/rc/emacs-rc-cedet.el
;; semantic/ia
;; semantic ctag ectag
;; http://www.randomsample.de/cedetdocs/semantic/Canned-Configuration.html
;; semanticdb-ectag
;; http://cxwangyi.wordpress.com/2010/08/21/using-cedet-with-emacs/
;; semantic-tag-folding-mode
;; semantic gnu support

;; keybinding
;; http://daftcoder.egloos.com/2886869

;; Enable srecode
(global-srecode-minor-mode 1)

;; Enable tag folding
(global-semantic-tag-folding-mode)

;; Load contrib library
(require 'eassist)


(provide 'setup-cedet)
