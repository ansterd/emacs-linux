(require 'icicles)
(icy-mode 1)

;; like ido
(setq icicle-show-Completions-initially-flag t)
(setq icicle-incremental-completion t)

(add-hook 'icicle-ido-like-mode-hook
            (lambda () (setq icicle-default-value
                        (if icicle-ido-like-mode t 'insert-end))))


(provide 'setup-icicles)
