(packages-install '(magit
		    git-gutter+
		    git-gutter-fringe+))

(require 'magit)
(require 'git-gutter+)
(require 'git-gutter-fringe+)

(global-git-gutter+-mode t)

(provide 'setup-git)
