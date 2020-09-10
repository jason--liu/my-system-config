#!/bin/bash
sudo apt-get install wget
sudo apt-get install cmake
sudo apt-get install curl
sudo apt-get remove libreoffice-common  
#vim
sudo apt-get install vim
sudo apt-get remove unity-webapps-common 
#build-essential
sudo apt-get install build-essential
#shutter
sudo apt-get install shutter
#meld
sudo apt-get install meld
#git
sudo apt-get install git
#git config --global user.name "xxx"
#git config --global user.eamil "你的邮箱地址"
git confit --global core.editor vi
#rar
sudo apt-get install rar
#unrar
sudo apt-get install unrar
#emacs25
#sudo add-apt-repository ppa:kelleyk/emacs
#sudo apt update
#sudo apt install emacs25
#ctags
sudo apt-get install exuberant-ctags
#wine
#sudo add-apt-repository ppa:ubuntu-wine/ppa
#sudo apt-get install wine
#Theme
#sudo add-apt-repository ppa:noobslab/themes
#sudo apt-get update
#sudo apt-get install flatabulous-theme
sudo apt-get install unity-tweak-tool
#icons
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

#输入法两个弹框
sudo apt-get purge fcitx-ui-qimpanel
#system-monitor
#https://blog.csdn.net/qq_17457331/article/details/88066083
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor
#kernel compile
sudo apt install libelf-dev
sudo apt-get install libssl-dev
sudo apt install bison
sudo apt install flex  
sudo apt install ncurses-dev
#zsh do manually
#sudo apt-get install zsh
#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#chsh -s /usr/bin/zsh

# TMUX
# Steps to build and install tmux from source on Ubuntu.
# Takes < 25 seconds on EC2 env [even on a low-end config instance].
VERSION=2.7
sudo apt-get -y remove tmux
sudo apt-get -y install wget tar libevent-dev libncurses-dev
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
sudo make install
cd -
sudo rm -rf /usr/local/src/tmux-*
sudo mv tmux-${VERSION} /usr/local/src

## Logout and login to the shell again and run.
## tmux -V
#oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
#cp .tmux/.tmux.conf.local .

#ycmd
#chome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*; sudo apt-get -f install
#https://www.linuxidc.com/Linux/2016-05/131096.htm
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#htop
#notepadqq this way could not access some file in other dir.
#sudo snap install --classic notepadqq
#snap remove notepadqq
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq
