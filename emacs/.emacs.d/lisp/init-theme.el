(provide 'init-theme)
;;(add-to-list 'load-path
;;	     (expand-file-name "lisp/custom-theme" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/lisp/custom-theme/")
(require 'color-theme)
(color-theme-initialize)
(eval-after-load "color-theme" '(color-theme-blue-mood))


;;(setq custom-theme-directory
;;      (expand-file-name "lisp/custom-themes" user-emacs-directory))

