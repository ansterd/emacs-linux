(packages-install '(json-mode))

(defun custom:json-mode-hook ()
  (flycheck-mode 1)
  (setq tab-width 2))

(eval-after-load "json-mode"
  '(progn
     (add-hook 'json-mode-hook 'custom:json-mode-hook)
     ))

(provide 'extension-json)
