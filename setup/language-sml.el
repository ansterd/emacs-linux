(packages-install '(sml-mode))

(eval-after-load "sml-mode"
    '(progn
       (setenv "PATH" (concat "~/Application/sml/bin:" (getenv "PATH")))
       (setq exec-path (cons "~/Application/sml/bin"  exec-path))
       ))

(provide 'language-sml)

