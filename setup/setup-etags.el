(require 'etags-select)
(require 'etags-table)

(defun custom:ido-find-tag ()
  (interactive)
  (tags-completion-table)
  (let (tag-names)
    (mapatoms (lambda (x)
                (push (prin1-to-string x t) tag-names))
              tags-completion-table)
    (etags-select-find (ido-completing-read "Tag: " tag-names))))

(defun custom:find-etags-file ()
  (progn
    (defun find-tags-file-r (path)
      (let* ((parent (file-name-directory path))
	     (possible-tags-file (concat parent "TAGS")))
	(cond
	 ((file-exists-p possible-tags-file) (throw 'found-it possible-tags-file))
	 ((string= "/TAGS" possible-tags-file) (error "no tags file found"))
	 (t (find-tags-file-r (directory-file-name parent))))))

    (if (buffer-file-name)
        (catch 'found-it 
          (find-tags-file-r (buffer-file-name)))
      (error "buffer is not visiting a file"))))

(defun custom:set-etags-file-path ()
  (interactive)
  (tags-reset-tags-tables)
  ;; (setq tags-table-list (custom:find-etags-file)))
  (setq tags-table-list (cons (custom:find-etags-file) tags-table-list)))

;; TODO : set language-force option depend on Major-mode
(defun custom:build-ectags-for-javascript ()
  (interactive)
  (shell-command "ctags -e -R --extra=+fq -f .TAGS .")
  (shell-command "uniq .TAGS > TAGS")
  (shell-command "rm .TAGS"))

;; delay search the TAGS file after open the source file
;; (add-hook 'find-file-hook 'custom:set-etags-file-path)

(global-set-key (kbd "C-c t r") 'tags-reset-tags-tables)
(global-set-key (kbd "C-c t m") 'custom:build-ectags-for-javascript)

;; helm-etags-plus
(add-to-list 'load-path "~/.emacs.d/site-lisp/helm-etags-plus")
(require 'helm-etags+)

(global-set-key (kbd "C-c t f") 'helm-etags+-history-go-forward)
(global-set-key (kbd "C-c t b") 'helm-etags+-history-go-back)
(global-set-key (kbd "C-c t h") 'helm-etags+-history)
(global-set-key (kbd "M-]") 'helm-etags+-select)


(provide 'setup-etags)
