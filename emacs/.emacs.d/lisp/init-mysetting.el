(provide 'init-mysetting)

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
;;(setq gnus-inhibit-startup-message t)

;;不产生备份文件和临时文件
(setq make-backup-files nil)
(setq-default make-backup-files nil)

;;自动保存模式
(setq auto-save-mode nil)

;; 自动在文件末尾增加新行
(setq require-final-newline t)

;;可以显示所有目录以及文件
(setq speedbar-show-unknown-files t)
;;设置打开文件的缺省路径
;;(setq default-directory "E:/")
(setq default-directory "/")
;;设置滚动栏在窗口右侧，而默认是在左侧
(customize-set-variable 'scroll-bar-mode 'right)

;; line number
(require 'linum)
(setq linum-format "%4d")
(add-hook 'find-file-hooks(lambda () (linum-mode)))

;; set "yes/no" to "y/n"
(fset 'yes-or-no-p 'y-or-n-p)

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

