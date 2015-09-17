## 我的vim配置

	$ cp .vimrc ~
	$ cp .vim ~

## cmake

	https://github.com/Ignotus/vim-cmake-project
	下载
	$ make install

## 安装

####方法一:
	   $ sudo apt-get install vim vim-scripts vim-doc

####方法二:
	1. uninstall older vim
	   $ sudo apt-get remove vim
	   $ sudo apt-get remove vim-runtime
	   $ sudo apt-get remove gvim
	   $ sudo apt-get remove vim-tiny
	   $ sudo apt-get remove vim-common
	   $ sudo apt-get remove vim-gui-common
	2. install python-dev
	   $ sudo apt-get install python-dev
	3. download the newest vim src
	   $ sudo git clone git@github.com:vim/vim.git
	   $ cd vim
	   $ ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-i386-linux-gnu/ --enable-perlinterp --enable-gui=gtk2 --enable-cscope --enable-luainterp --enable-perlinterp --enable-multibyte --prefix=/usr
	   $ sudo make VIMRUNTIMEDIR=/usr/share/vim/vim74
	   $ sudo make install
