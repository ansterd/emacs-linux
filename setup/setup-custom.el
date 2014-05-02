(defun kill-other-buffers ()
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(defun my-isearch-yank-word-or-char-from-beginning ()
  "Move to beginning of word before yanking word in isearch-mode."
  (interactive)
  (if (= 0 (length isearch-string))
      (beginning-of-thing 'word))
  (isearch-yank-word-or-char)
  (substitute-key-definition 'my-isearch-yank-word-or-char-from-beginning 
        'isearch-yank-word-or-char
        isearch-mode-map))

(add-hook 'isearch-mode-hook
 (lambda ()
   "Activate my customized Isearch word yank command."
   (substitute-key-definition 'isearch-yank-word-or-char 
         'my-isearch-yank-word-or-char-from-beginning
         isearch-mode-map)))



(provide 'setup-custom)
