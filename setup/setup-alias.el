;; Use y-or-n-p instead of yes-or-no-p
(defalias 'yes-or-no-p 'y-or-n-p)

;;indent all line
(defalias 'ial 'cleanup-buffer)

(provide 'setup-alias)
