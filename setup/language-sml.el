(packages-install '(sml-mode))

(provide 'language-sml)

(eval-after-load "sml-mode"
    '(progn
       (setenv "PATH" (concat "~/Application/sml/bin:" (getenv "PATH")))
       (setq exec-path (cons "~/Application/sml/bin"  exec-path))
       ))
