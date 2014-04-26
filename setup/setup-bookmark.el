;; Set bookmark save path
(custom-set-variables 
 '(bmkp-last-as-first-bookmark-file nil))
(setq bookmark-save-path 
      (concat user-emacs-directory "cache/bookmark/"))
(setq bookmark-default-file
      (concat bookmark-save-path "bookmarks"))

(setq enable-recursive-minibuffers t)

(require 'bookmark+)

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
