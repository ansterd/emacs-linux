(defadvice sgml-close-tag (after insert-newline activate)
  (insert "\n"))

(provide 'language-html)
