(require 'ecb)

(add-hook 'kill-emacs-hook 'ecb-store-window-sizes)
(setq ecb-tip-of-the-day nil)

(global-set-key (kbd "C-c w t") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "C-c w c") 'ecb-toggle-compile-window)
(global-set-key (kbd "C-c w d") 'ecb-goto-window-directories)
(global-set-key (kbd "C-c w s") 'ecb-goto-window-sources)
(global-set-key (kbd "C-c w m") 'ecb-goto-window-methods)
(global-set-key (kbd "C-c w h") 'ecb-goto-window-history)
(global-set-key (kbd "M-0") 'ecb-goto-window-edit-last)

(provide 'setup-ecb)

