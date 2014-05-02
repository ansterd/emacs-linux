(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; use ido
(setq org-completion-use-ido t)

;; use org-log-done
(setq org-log-done t)

;; set org-todo-keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "IN-PROGRESS(p)" "|" "DONE(d)")
              (sequence "MEETING(m)" "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "dark blue" :weight bold)
              ("IN-PROGRESS" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("MEETING" :foreground "maroon" :weight bold)
              ("CANCELLED" :foreground "red" :weight bold))))

;; set org tag list
(setq org-tag-alist '(
		      ("work" . ?w) 
		      ("home" . ?h)
		      ("laptop" . ?l)))


;; define custom key will be used in org-mode
(define-key org-mode-map (kbd "C-c a") 'org-agenda)
(define-key org-mode-map (kbd "C-c l") 'org-store-link)
(define-key org-mode-map (kbd "C-c l") 'org-store-link)
(define-key org-mode-map (kbd "C-c o") 'org-iswitchb)


;; use these functions globally
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c C-o") 'org-open-at-point)
(global-set-key (kbd "C-c o") 'org-iswitchb)

;; set org agenda files
(setq dropbox-installed-dir "~/Dropbox")
(when (file-directory-p 
       (concat dropbox-installed-dir "/Org"))
  (setq org-agenda-files 
	(list "~/Dropbox/Org")))

;; set org-link-frame-setup 
;; so that you can open file in current window
(setq org-link-frame-setup '((file . find-file)))

;; auto-complete
(require 'org-ac)
(org-ac/config-default)

(provide 'setup-org)
