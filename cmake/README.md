# cmake

		1. http://www.cmake.org/download/ 下载cmake-3.3.1-linux-x86_64.sh
		2. 拷贝到/home/install/cmake3.3.1下
		3. 安装 
		$ chmod 777 cmake-3.3.1-linux-x86_64.sh
		$ ./cmake-3.3.1-linux-x86_64.sh
		4. ln -s /home/install/cmake3.3.1/bin/* /usr/bin
			注意：ln命令必须使用绝对路径，否则会提示“符号连接的层数过多”
		
																					方法二
		$ sudo apt-get install cmake
		$ sudo apt-get install cmake-gui

