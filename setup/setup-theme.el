(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'tomorrow-night-eighties-theme)

(set-face-foreground 'highlight (face-background 'lazy-highlight))
(set-face-background 'highlight (face-foreground 'lazy-highlight))

(provide 'setup-theme)
