;; Set Directory Path
(setq dir/site-lisp (concat user-emacs-directory "site-lisp/")
      dir/setup (concat user-emacs-directory "setup/")
      dir/cache (concat user-emacs-directory "cache/"))

(add-to-list 'load-path dir/site-lisp)
(add-to-list 'load-path dir/setup)

;; Use common-lisp
(require 'cl)

;; Setup site-lisp
(mapc 'require '(setup-default
		 setup-package))

;; Install packages from MELPA
(defun init-packages ()
  (packages-install
   '(
     s
     f
     frame-restore
     bookmark+

     ag

     web-mode
     emmet-mode
     jade-mode
     
     js2-mode
     js2-refactor
     json-mode
     ac-js2
     tern
     tern-auto-complete

     )))

(condition-case nil
    (init-packages)
  (error
   (package-refresh-contents)
   (init-packages)))

;; Setup packages, builtin libraries
(mapc 'require '(
		 ;; site-lisp
		 setup-auto-complete	
		 setup-cedet
		 
		 ;; packages
		 setup-theme
		 setup-font
		 
		 setup-evil
		 setup-desktop
		 setup-revive-plus
		 setup-frame
		 setup-windmove
		 setup-buffcycle
		 setup-ido
		 setup-icomplete-mode
		 setup-ace-jump-mode
		 setup-smex
		 setup-powerline
		 setup-uniquify
		 setup-bookmark
		 setup-recentf
		 setup-org
		 setup-fci
		 setup-flycheck
		 setup-smartparens
		 setup-yasnippet
		 setup-git
		 ;; setup-sr-speedbar
		 ;; setup-helm
		 ;; setup-etags
		 ;; setup-ecb
		 setup-perspective
		 setup-projectile
		 ;; setup-tramp
		 ))

;; programming language
(require 'language-scala)
(require 'language-css)
(require 'language-lisp)
(require 'language-sml)
(require 'language-python)

;; TODO: refactoring
;; '(require 'language-coffee)

;; specific extensions
(require 'extension-nginx)
(require 'extension-markdown)
(require 'extension-json)

;; (eval-after-load "web-mode" '(require 'language-html))
;; (eval-after-load "js2-mode" '(require 'language-javascript))
;; (eval-after-load "c-mode" '(require 'language-c++))
;; (eval-after-load "c++-mode" '(require 'language-c++))

;; Setup keybinding and alias
(require 'setup-alias)
(require 'setup-custom)

;; turn off debug option after loading emacs
(setq debug-on-error nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file nil)
 '(ecb-options-version "2.40")
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

