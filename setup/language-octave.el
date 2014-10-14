(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(packages-install '(ac-octave))
(add-hook 'octave-mode-hook 'auto-complete-mode)

(provide 'language-octave)
