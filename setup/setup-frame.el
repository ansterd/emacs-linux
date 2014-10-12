(packages-install '(frame-restore))

;; Use frame-restore
(require 'frame-restore)
(frame-restore-mode)
(setq frame-restore-parameters-file
      (concat user-emacs-directory "cache/frame/frame-restore-parameters"))

(provide 'setup-frame)
