(provide 'init-m-num)
;;https://github.com/nschum/window-numbering.el
;; 使用M-number实现窗口切换
(add-to-list 'load-path "~/.emacs.d/lisp/window-numbering")
(require 'window-numbering)
(window-numbering-mode 1)
