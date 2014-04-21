(setq dropbox-dir "~/Dropbox")

(when (file-directory-p dropbox-dir)
  (add-hook 'after-init-hook
	    (lambda ()
	      (switch-to-buffer (find-file "~/Dropbox/Todo/List.org")))))

(provide 'setup-dropbox)
