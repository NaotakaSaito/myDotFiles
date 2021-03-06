sudo apt install git

#ビルドする際に必要なパッケージをインストールする
sudo apt-get install checkinstall mercurial python-dev python3-dev ruby ruby-dev libx11-dev libxt-dev libgtk2.0-dev libncurses5 ncurses-dev

sudo apt-get install liblua5.1-0-dev

sudo apt-get install libruby-dev

sudo apt-get install libpython-dev

sudo apt install libperl-dev

git clone https://github.com/vim/vim.git

cd vim

./configure --with-features=huge \
	--disable-darwin \
	--disable-selinux \
	--enable-fail-if-missing \
	--enable-perlinterp=dynamic \
	--enable-pythoninterp \
	--enable-python3interp \
	--enable-tclinterp \
	--enable-rubyinterp \
	--enable-cscope \
	--enable-multibyte \
	--enable-xim \
	--enable-fontset \
	--with-compiledby=xxxkurosukexxx \
	--enable-gui=no \
	--prefix=/usr/local
	#ここでのオプションの設定としてperl, python, rubyをオンにしています

	sudo apt install ncurses-dev

	make

	sudo make install

