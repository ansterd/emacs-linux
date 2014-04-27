(setq dropbox-dir "~/Dropbox")

(when (file-directory-p dropbox-dir)
  (find-file "~/Dropbox/Todo/List.org"))

(provide 'setup-dropbox)
