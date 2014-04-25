(require 'bookmark)
(setq enable-recursive-minibuffers t)


;; Set bookmark save path
(setq bookmark-save-path 
      (concat user-emacs-directory "cache/bookmark/"))
;; (setq bookmark-default-file
      ;; (concat bookmark-save-path "bookmarks"))
(setq bookmark-default-file "~/.emacs.d/cache/bookmark/bookmarks")

;; Use bookmark with ido
(global-set-key (kbd "C-x r b") 'ido-bookmark-jump)

(require 'ido)
(defun ido-bookmark-jump (bname)
  "*Switch to bookmark interactively using `ido'."
  (interactive (list (ido-completing-read "Bookmark: " (bookmark-all-names) nil t)))
  (bookmark-jump bname))

;; Put Last-Selected Bookmark on Top
(defadvice bookmark-jump (after bookmark-jump activate)
  (let ((latest (bookmark-get-bookmark bookmark)))
    (setq bookmark-alist (delq latest bookmark-alist))
    (add-to-list 'bookmark-alist latest)))

(provide 'setup-bookmark)
