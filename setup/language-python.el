(packages-install '(elpy))

(elpy-enable)

(when (executable-find "ipython")
  (elpy-use-ipython))

(set-face-background 'highlight-indentation-face "gray80")
(setq elpy-rpc-backend "jedi")

(defun use-flycheck ()
  (flymake-mode)
  (flycheck-mode))

;; disable flymake
(add-hook 'python-mode-hook 'use-flycheck)


(provide 'language-python)
