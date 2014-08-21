
;; install scala packages

(require 'setup-package)

(packages-install '(scala-mode2
		    ensime))


(require 'scala-mode2)
(require 'ensime)

(defun custom:scala-mode-config ()
  (fci-mode 1))

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'custom:scala-mode-config)

(provide 'language-scala)
