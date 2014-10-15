(packages-install '(sqlup-mode))

(add-hook 'sql-mode-hook 'auto-complete-mode)
(add-hook 'sql-mode-hook 'sqlup-mode)
(add-hook 'sql-interactive-mode-hook 'sqlup-mode)

(provide 'language-mysql)
