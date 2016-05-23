;;(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-theme)

(require 'init-mysetting)

(require 'init-shortcut)

;; sudo 打开文件
(require 'sudo-reopen)

(require 'init-yasnippet)

(require 'init-py-ide)

(require 'init-m-num)


