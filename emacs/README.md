#emacs插件和配置说明
==============================================================

##ubuntu
--------------------------------------------------------------
	1. 将plugins拷贝到~/.emacs.d/目录下
  	2. $ cp .emacs.ubuntu ~/.emacs

##windows
--------------------------------------------------------------
	1. 将plugins拷贝到EMACS_INSTALL_DIR/.emacs.d/目录下
  	2. $ cp .emacs.windows EMACS_INSTALL_DIR/.emacs

##插件说明
### color-theme

	http://download.savannah.gnu.org/releases/color-theme/

	编辑.emacs，加入以下内容
		(require 'color-theme)
		(color-theme-initialize)
		(eval-after-load "color-theme" '(color-theme-blue-mood))

### windows-numbering

	https://github.com/nschum/window-numbering.el
	编辑.emacs，加入以下内容：
		;; 使用M-number实现窗口切换
	   	(require 'window-numbering)
	   	(window-numbering-mode 1)

### yasnippet

	快速补齐 https://github.com/capitaomorte/yasnippet
  	   1. $ cd .emacs.d && mkdir plugins
	   2. git clone git@github.com:capitaomorte/yasnippet.git
	   3. 编辑.emacs，加入以下内容：
		;; windows
		(add-to-list 'load-path "D:/install/emacs-24.5/.emacs.d/plugins/yasnippet")
		;; ubuntu
		;; (add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
		(require 'yasnippet)
	      	(yas-global-mode 1)
	    4. 下载yasnippet-snippets到.emacs.d下
	       $ cd .emacs.d
	       $ git clone git@github.com:AndreaCrotti/yasnippet-sippets.git snippets
	     5. M-x yas-reload-all 激活

### 以sudo权限重新打开文件

	编辑.emacs，加入以下内容
	   (require 'sudo-reopen)
	   (global-set-key (kbd "C-c s u") 'sudo-reopen)

### 设置F9调用speedbar命令

	https://github.com/emacsmirror/emacswiki.org/blob/master/sr-speedbar.el
	编辑.emacs，加入以下内容
	   ;; f9: open/close speedbar
	   (require 'sr-speedbar)
	   (setq sr-speedbar-right-side nil)
	   (setq sr-speedbar-width 30)
	   (setq drame-update-speed t)
	   (global-set-key (kbd "<f9>") (lambda()
 	                        (interactive)
 	                        (sr-speedbar-toggle)))

### CMake-mode

	https://github.com/Kitware/CMake/blob/master/Auxiliary/cmake-mode.el
	.emacs中加入以下内容
	(require 'cmake-mode)
	(setq auto-mode-alist
	      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
	      	      		("\\.cmake\\'" . cmake-mode))
			auto-mode-alist))
