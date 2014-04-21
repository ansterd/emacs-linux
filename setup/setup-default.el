(setq cache-directory (concat user-emacs-directory "cache/"))

;; Disable toolbar, scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Disable backup, auto-save
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Set eshell, auto-save directory
(setq eshell-directory-name (concat cache-directory "eshell"))
(set 'auto-save-list-file-prefix (concat cache-directory "auto-save-list/"))

;; Enable line-number
(global-linum-mode t)

;; No start-up message
(setq inhibit-startup-message t)

(provide 'setup-default)
