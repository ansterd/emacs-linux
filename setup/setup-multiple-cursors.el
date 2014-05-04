(require 'multiple-cursors)

(global-set-key (kbd "C-c m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c m p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c m a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c m s") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-c m t") 'mc/mark-sgml-tag-pair)

(setq mc/list-file "~/.emacs.d/multiple-cursors/.mc-lists.el")

(defvar custom:mc-evil-previous-state nil)

(defun custom:mc-evil-switch-to-insert-state ()
  (when (and (bound-and-true-p evil-mode)
             (not (memq evil-state '(insert emacs))))
    (setq custom:mc-evil-previous-state evil-state)
    (evil-insert 1)))

(defun custom:mc-evil-back-to-previous-state ()
  (when custom:mc-evil-previous-state
    (unwind-protect
        (case custom:mc-evil-previous-state
          ((normal visual) (evil-force-normal-state))
          (t (message "Don't know how to handle previous state: %S"
                      custom:mc-evil-previous-state)))
      (setq custom:mc-evil-previous-state nil))))

(defun custom:rrm-evil-switch-state ()
  (if rectangular-region-mode
      (custom:mc-evil-switch-to-insert-state)
    ;; (custom:mc-evil-back-to-previous-state)  ; does not work...
    (setq custom:mc-evil-previous-state nil)))

(add-hook 'multiple-cursors-mode-enabled-hook
          'custom:mc-evil-switch-to-insert-state)
(add-hook 'multiple-cursors-mode-disabled-hook
          'custom:mc-evil-back-to-previous-state)
(add-hook 'rectangular-region-mode-hook 'custom:rrm-evil-switch-state)

(provide 'setup-multiple-cursors)
