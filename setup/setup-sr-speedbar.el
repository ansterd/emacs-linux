(add-to-list 'load-path "~/.emacs.d/site-lisp/sr-speedbar")

(global-set-key (kbd "C-c p") 'sr-speedbar-toggle)

;; select speedbar after open
(defadvice sr-speedbar-open (after select-sp-bar-afer-open activate)
  (sr-speedbar-select-window))

(require 'sr-speedbar)
(provide 'setup-sr-speedbar)

