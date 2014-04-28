(setq dropbox-dir "~/Dropbox")

(when (file-directory-p dropbox-dir)
  (add-hook 'after-init-hook
	    (lambda ()
	      (find-file "~/Dropbox/Org/Todo.org"))))

(provide 'setup-dropbox)
