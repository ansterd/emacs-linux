(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; set org-todo-keywords
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; define custom key will be used in org-mode
(define-key org-mode-map (kbd "C-c a") 'org-agenda)
(define-key org-mode-map (kbd "C-c l") 'org-store-link)
(define-key org-mode-map (kbd "C-c l") 'org-store-link)


;; use these functions globally
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c C-o") 'org-open-at-point)

(setq org-tag-alist '(
		      ("@work" . ?w) 
		      ("@home" . ?h)
		      ("laptop" . ?l)))

(provide 'setup-org)
