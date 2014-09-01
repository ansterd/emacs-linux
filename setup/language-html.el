(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-to-list 'ac-modes 'web-mode)

(defun custom:wrap-web-mode-element-close ()
  (interactive)
  (web-mode-element-close))

(defadvice custom:wrap-web-mode-element-close
  (after insert-newline activate)
  (indent-according-to-mode)
  (insert "\n"))

(define-key web-mode-map (kbd "C-c /")
  'custom:wrap-web-mode-element-close)

(defun custom:web-mode-config ()
  (add-to-list 'ac-sources 'ac-source-semantic)
  (add-to-list 'ac-sources 'ac-source-semantic-raw)
  (add-to-list 'ac-sources 'ac-source-yasnippet)
  (yas-activate-extra-mode 'html-mode)
  (yas-activate-extra-mode 'nxml-mode)
  (auto-complete-mode 1))

(add-hook 'web-mode-hook 'custom:web-mode-config)
(add-hook 'web-mode-hook 'emmet-mode)

(provide 'language-html)
