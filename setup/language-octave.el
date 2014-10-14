(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-hook 'octave-mode-hook 'auto-complete-mode)

(provide 'language-octave)
