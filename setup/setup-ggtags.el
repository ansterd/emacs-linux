(add-hook 'c-mode-common-hook
	  (lambda ()
	      (ggtags-mode 1)))

(provide 'setup-ggtags)
