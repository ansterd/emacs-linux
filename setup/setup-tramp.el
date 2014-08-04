(require 'tramp)
(setq tramp-default-method "ftp")
(tramp-unload-tramp)
;; (setq password-cache t)
;;(setq password-cache-expiry 3600)

;; Guard to ensure that TRAMP is available
;; (if (locate-library "tramp")
;;     (eval-after-load "tramp"
;;  
;;       ;; The actual TRAMP configuration
;;       '(add-to-list 'tramp-default-proxies-alist
;;                     '("\\`dev\\.example\\.com\\'"
;;                       "\\`chris\\'"
;;                       "/ssh:%h:"))))

;; (defun edit-current-file-as-root ()
;;   "Edit the file that is associated with the current buffer as root"
;;   (interactive)
;;   (if (buffer-file-name)
;;       (progn
;;         (setq file (concat "/sudo::" (buffer-file-name)))
;;         (find-file file))
;;    (message "Current buffer does not have an associated file.")))

(provide 'setup-tramp)

