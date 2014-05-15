(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'pkl 'package-list-packages)
(defalias 'pkln 'package-list-packages-no-fetch)
(defalias 'pki 'package-install)

;; indent all lines
(defalias 'ial 'cleanup-buffer)

;; go to element end, start
(require 'web-mode)
(defalias 'gee 'web-mode-element-end)
(defalias 'ges 'web-mode-element-beginning)


(provide 'setup-alias)
