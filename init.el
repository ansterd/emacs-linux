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
		 setup-package))

;; Install packages from MELPA
(defun init-packages ()
  (packages-install
   '(evil
     markdown-mode
     ace-jump-mode
     ido-vertical-mode
     ido-at-point
     ido-ubiquitous
     flx-ido
     smex
     expand-region
     helm
     powerline f
     frame-restore
     bookmark+
     org
     fill-column-indicator
     thingatpt+
     iedit
     auto-complete
     org-ac
     auto-complete-c-headers
     flycheck
     google-c-style

     smartparens
     multiple-cursors
     surround
     evil-numbers
     evil-matchit
     evil-leader
     evil-exchange
     evil-nerd-commenter
     magit
     ggtags
     ecb
     web-mode
     emmet-mode
     rainbow-mode
     flycheck-pos-tip
     js2-mode
     js2-refactor
     json-mode
     ac-js2
     tern
     tern-auto-complete
     smart-forward
     etags-select
     etags-table
     ac-slime
     projectile
     perspective
     nginx-mode

     ;; php
     php-mode
     php-extras
     php-auto-yasnippets
     php-boris-minor-mode
     php-eldoc
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
		 setup-evil
		 setup-desktop
		 setup-revive-plus
		 setup-frame
		 setup-windmove
		 setup-buffcycle
		 setup-ido
		 setup-icomplete-mode
		 setup-font
		 setup-ace-jump-mode
		 setup-smex
		 setup-expand-region
		 setup-helm
		 ;; setup-thingatpt
		 setup-powerline
		 setup-uniquify
		 setup-bookmark
		 setup-recentf
		 setup-org
		 setup-80-column
		 setup-iedit
		 setup-flycheck
		 setup-smartparens
		 setup-yasnippet
		 ;; setup-multiple-cursors
		 setup-magit
		 setup-ggtags
		 setup-sr-speedbar
		 setup-etags
		 setup-tramp
		 ;; setup-ecb
		 setup-perspective
		 setup-projectile
		 setup-nginx
		
		 ;; language
		 ;; language-c++
		 language-html
		 language-lisp
		 language-javascript
		 language-php
		 ))

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
