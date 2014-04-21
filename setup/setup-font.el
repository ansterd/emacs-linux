(setq nanum-font-dir "/usr/share/fonts/truetype/nanum")

(when (file-directory-p nanum-font-dir)
  (set-fontset-font "fontset-default" '(#x1100 . #xffdc)
		    "NanumGothic"))

(setq face-font-rescale-alist
      '((".*nanum.*" . 1.0)))


(provide 'setup-font)
