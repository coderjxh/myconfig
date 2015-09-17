(setq default-line-spacing 4)
(setq default-fill-column 80)
(global-font-lock-mode 1)
(transient-mark-mode t)

;; show time
(display-time-mode 1)
(setq display-time-24hr-format t) ;; 采用24小时制
(setq display-time-day-and-date t) ;; 时间显示包括日期和具体时间
;; (setq display-time-use-mail-icon t) ;; 时间栏旁边启用邮件设置
(setq display-time-interval 10)

;; close loading img
(setq gnus-inhibit-startup-message t)

;;不产生备份文件和临时文件
(setq make-backup-files nil)
(setq-default make-backup-files nil)

;;自动保存模式
(setq auto-save-mode nil)

;; 自动在文件末尾增加新行
(setq require-final-newline t)

;; sudo 打开文件
;; windows
;;(add-to-list 'load-path "d:/install/emacs-24.5/.emacs.d/plugins")
;; ubuntu
;;(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'sudo-reopen)
(global-set-key (kbd "C-c s u") 'sudo-reopen)

;; windows
;;(add-to-list 'load-path "d:/install/emacs-24.5/.emacs.d/plugins/color-theme")
;; ubuntu
;;(add-to-list 'load-path "~/.emacs.d/plugins/color-theme")
(require 'color-theme)
(color-theme-initialize)
(eval-after-load "color-theme" '(color-theme-blue-mood))

;;可以显示所有目录以及文件
(setq speedbar-show-unknown-files t)
;;设置打开文件的缺省路径
(setq default-directory "E:/")
;;(setq default-directory "/")
;;设置滚动栏在窗口右侧，而默认是在左侧
(customize-set-variable 'scroll-bar-mode 'right)

;; line number
(require 'linum)
(setq linum-format "%4d")
(add-hook 'find-file-hooks(lambda () (linum-mode)))

(setq x-select-enable-clipboard t)

;; set "yes/no" to "y/n"
(fset 'yes-or-no-p 'y-or-n-p)


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

;; to other buffer window
(global-set-key [f12] 'other-window)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "微软雅黑" :foundry "outline" :slant normal :weight normal :height 105 :width normal)))))

;;https://github.com/nschum/window-numbering.el
;; 使用M-number实现窗口切换
;; windows
;;(add-to-list 'load-path "d:/install/emacs-24.5/.emacs.d/plugins/window-numbering")
;; ubunbu
;;(add-to-list 'load-path "~/.emacs.d/plugins/window-numbering")
(require 'window-numbering)
(window-numbering-mode 1)

;; install Winner Mode
;;(winner-mode 1)
;;(global-set-key (kbd "C-x 4 u") 'winner-undo)
;;(global-set-key (kbd "C-x 4 r") 'winner-redo)

;; 使用shift+↑/↓实现窗口切换
(windmove-default-keybindings)

;; emacs for python
;;(load-file "D:/install/emacs-24.5/3rdparty/emacs-for-python/epy-init.el")

;; delete trailing space
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; add plugin-dir to .emacs
;; windows
;;(add-to-list 'load-path "d:/install/emacs-24.5/.emacs.d/plugins/yasnippet")
;; ubuntu
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;;(add-to-list 'yas-root-directory "d:/install/emacs-24.5/.emacs.d/yasnippet-snippets")
;;(yas-initialize)
