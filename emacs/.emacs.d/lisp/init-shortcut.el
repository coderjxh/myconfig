(provide 'init-shortcut)

;; 打开ctrl+c\Ctrl+v复制粘贴
(setq x-select-enable-clipboard t)

;; set "Ctrl+r"刷新缓冲区
(global-set-key [(control c) r] 'revert-buffer)

(global-set-key [C-f4] 'previous-error)
(global-set-key [f4] 'next-error)

;; f5: compile
(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
  (global-set-key [C-f5] 'compile)
  (global-set-key [f5] 'du-onekey-compile)

;; f6-open .h/.cpp file


;; run gdb
(global-set-key [f7] 'gdb)

;; open shell
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(global-set-key [C-f8] 'open-eshell-other-buffer)
(global-set-key [f8] 'eshell)

;; f9: open/close speedbar
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 30)
(setq drame-update-speed t)
(global-set-key (kbd "<f9>") (lambda()
			       (interactive)
			       (sr-speedbar-toggle)))
;;(setq speedbar-use-images nil)
;(global-set-key [f9] 'sr-speedbar-open)
;;(global-set-key [f9] 'speedbar)

;; to other buffer window
(global-set-key [f12] 'other-window)

;; 使用shift+↑/↓实现窗口切换
(windmove-default-keybindings)
