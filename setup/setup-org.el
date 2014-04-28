(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; use ido
(setq org-completion-use-ido t)

;; set org-todo-keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "IN-PROGRESS(n)" "|" "DONE(d!)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "dark blue" :weight bold)
              ("IN-PROGRESS" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
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
(define-key org-mode-map (kbd "C-c b") 'org-iswitchb)


;; use these functions globally
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c C-o") 'org-open-at-point)




(provide 'setup-org)
