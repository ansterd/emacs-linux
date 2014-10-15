(packages-install '(sqlup-mode))

;; (add-to-list 'ac-modes 'sql-mode)
;; (add-to-list 'ac-modes 'sql-interactive-mode)

(defun custom:sql-mode-config ()
  (auto-complete-mode)
  (sqlup-mode))

(add-hook 'sql-mode-hook 'custom:sql-mode-config)
(add-hook 'sql-interactive-mode-hook 'custom:sql-mode-config)

(eval-after-load "sql"
    '(progn
       (sql-set-product 'mysql)))

(provide 'language-sql)
