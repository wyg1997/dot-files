# add mirror
# https://www.jianshu.com/p/1cde4b7ec3c2
# https://www.osyunwei.com/archives/2846.html
# echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
# echo 'Server = http://mirrors.163.com/archlinux/$repo/os/$arch' >> /etc/pacman.conf
# echo 'Server = http://mirror.bjtu.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.conf
# echo 'Server = http://mirror6.bjtu.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.conf
# echo 'Server = ftp://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.conf
# echo 'Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.conf
pacman-mirrors -g
pacman -Syyu # 3 times input
echo '[archlinuxcn]' >> /etc/pacman.conf
echo 'SigLevel = Optional TrustedOnly' >> /etc/pacman.conf
echo 'Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
pacman -Syy
echo Y | pacman -S archlinuxcn-keyring

# mhwd cmd todo

# timezone cmd todo

# add fctix
echo -e \\n | pacman -S fcitx-im # all
echo Y | pacman -S fcitx-configtool
echo 'export GTK_IM_MODULE=fcitx' >> ~/.xprofile # no sudo
echo 'export QT_IM_MODULE=fcitx' >> ~/.xprofile
echo 'export XMODIFIERS="@im=fcitx"' >> ~/.xprofile
# fctix-diagnose

# grub
# https://www.cnblogs.com/sunilsun/p/6010664.html
grub-mkconfig -o /boot/grub/grub.cfg

# ide
sudo echo 0.0.0.0 account.jetbrains.com >> /etc/hosts
echo Y | pacman -S vscode
echo Y | pacman -S clion
echo Y | pacman -S webstorm
echo Y | pacman -S pycharm-community-edition
echo Y | pacman -S intellij-idea-community-edition
echo Y | yaourt -S datagrip --noconfirm
echo Y | pacman -S sqlitebrowser


# cmd
echo Y | pacman -S yaourt
echo Y | pacman -S di
echo Y | pacman -S xclip
echo Y | pacman -S mlocate
echo Y | pacman -S tcping
echo Y | pacman -S lsof
echo Y | pacman -S diff-so-fancy 
echo Y | pacman -S valgrind
echo Y | pacman -S thefuck
echo Y | pacman -S exa
echo Y | pacman -S lazygit
alias ls='exa'

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

## tmux
echo Y | pacman -S tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
set -g default-terminal "tmux-256color"  
##  git
# https://www.jianshu.com/p/31cbbbc5f9fa

## zsh
echo Y | pacman -S zsh
# https://github.com/daquexian/dot_files/blob/master/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git /usr/share/oh-my-zsh
cd ~/.oh-my-zsh/theme
# theme
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
# config files
cd
git clone https://github.com/wyg1997/dot-files.git
cp ~/dot-files/.zshrc ~/
cp ~/dot-files/.tmux.conf ~/
rm -rf dot-files
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
# zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
# save configs
source .zshrc
chsh -s /bin/zsh



# cd /usr/share/oh-my-zsh
# wget https://raw.githubusercontent.com/rupa/z/master/z.sh --no-check-certificate
# cd 
# git clone git@github.com:lhy1024/dot_files.git
# yes | cp -R ~/dot_files/. ~/
# rm -rf dot_files
# https://segmentfault.com/a/1190000010518195
# https://github.com/rupa/z


# development
echo Y | pacman -S cmake
echo Y | pacman -S nodejs
echo Y | pacman -S npm
git clone https://github.com/mrvautin/adminMongo.git && cd adminMongo && npm install
echo Y | pacman -S clang
echo Y | pacman -S netactview 

## rabbitmq
# https://blog.csdn.net/luckytanggu/article/details/78542700
echo Y | pacman -S rabbitmq

# echo 127.0.0.1 mq >> /etc/hosts
# echo rabbitmq > /etc/hostname
# export HOSTNAME=mq
rabbitmq-plugins enable  rabbitmq_management 
/usr/local/rabbitmq/sbin/rabbitmqctl stop
/usr/local/rabbitmq/sbin/rabbitmq-server -detached



## database
echo Y | pacman -S mongodb
echo Y | pacman -S mongodb-tools
echo Y | pacman -S redis
echo Y | pacman -S mysql
echo Y | pacman -S phpmyadmin

## anaconda
echo Y | pacman -S anaconda
export PATH=/opt/anaconda/bin:$PATH
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/cloud/conda-forge/
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/cloud/msys2/
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/cloud/bioconda/
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/cloud/menpo/
conda config --set show_channel_urls yes
echo Y | conda install pysocks

## java
echo Y | pacman -S jdk
echo 'CLASSPATH=.://opt/java/lib' >> /etc/environment
echo 'JAVA_HOME=/opt/java' >> /etc/environment

## gcc -v 810
echo Y | pacman -S gcc49
echo Y | pacman -S gdb

## opencv -v 342
echo Y | pacman -S opencv

## vim
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh
# echo Y | pacman -S vim
# echo Y | pacman -S Vim-Plug
## PlugInstall!

## go 
echo Y | pacman -S go
echo Y | pacman -S goland
export GOPATH=/home/Go  
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

## cuda
echo Y | pacman -S cuda
echo Y | pacman -S cudnn

## opengl 

# software

echo Y | pacman -S google-chrome
echo Y | pacman -S typora
echo Y | pacman -S pandoc
echo Y | pacman -S electronic-wechat
echo Y | pacman -S netease-cloud-music
#echo Y | pacman -S teamviewer
echo Y | pacman -S telegram-desktop
echo Y | pacman -S google-earth-pro
echo Y | pacman -S wireshark-qt
echo Y | pacman -S anydesk
echo Y | pacman -S tusk
echo Y | pacman -S ccsm
echo Y | pacman -S onedrive # onedrive --monitor --confdir="~/.config/onedrive_lhy1024" 
yaourt -S wavebox-bin --noconfirm # jdmail no notification
yaourt -S fsearch-git --noconfirm

# deepin
# https://www.jianshu.com/p/a1e31a9a50dc
# todo bash replace string in file
echo -e \\n | pacman -S deepin
echo Y | pacman -S deepin.com.qq.office

echo Y | pacman -R deepin-music
echo Y | pacman -R deepin-grub2-themes
echo Y | pacman -R deepin-boot-maker
echo Y | pacman -R deepin-calendar
echo Y | pacman -Rsc plasma
echo Y | pacman -Rsc kde-applications
echo Y | pacman -R thunderbird


# virtualbox # 根据内核选择版本
# uname -a
echo Y | pacman -S virtualbox

# docker
echo Y | pacman -S docker
sudo systemctl start docker
sudo systemctl enable docker

yaourt -S nvidia-container --noconfirm # only #don't install nvidia-docker
# {\"registry-mirrors\": [\"https://docker.mirrors.ustc.edu.cn\"]}  /etc/docker/daemon.json # ?


sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/systemd/system/docker.service.d/override.conf <<EOF
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd --host=fd:// --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

sudo systemctl restart docker
sudo docker run -it --runtime nvidia -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/lhy/no4:/share --network=host --name 444 nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04 bash 
sudo docker run -it --runtime nvidia -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/lhy/no4:/share --network=host --name 444 gpu-dev:2.2 zsh
sudo docker run -it -v /home/lhy:/share --network=host --name deq centos bash
### todo

# kvm virtualbox

# shadowsockR

# timline zoho jdEmail outlook calender

# 开机启动

# 分屏快捷键 


# # https://lug.ustc.edu.cn/wiki/mirrors/help/ubuntu
# sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# apt-get update
echo Y | apt install libxext6
echo Y | apt install libxrender1
echo Y | apt install libxtst6
echo Y | apt install libxi6
echo Y | apt install libfreetype6
echo Y | apt install mlocate
echo Y | apt install wget
echo Y | apt install xauth
echo Y | apt install unzip
echo Y | apt install git
echo Y | apt install vim
echo Y | apt install libgmp-dev
echo Y | apt install libmpfr-dev
echo Y | apt install libmpc-dev
echo Y | apt install libssl-dev
echo Y | apt install sudo
echo Y | apt install cmake
apt-get install zsh git tmux vim wget mlocate cmake clang
apt-get install language-pack-zh-hans
# https://blog.csdn.net/zhangchao19890805/article/details/52743380
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
echo Y | apt install mongodb
echo Y | apt install cmake
# xauth add lhy-pc/unix:0  MIT-MAGIC-COOKIE-1  ed956cc3f4717096b76920cbc1c4df2a

# ./contrib/download_prerequisites
cd ..

mkdir build

cd build

../configure --enable-checking=release --enable-languages=c,c++ --disable-multilib

make -j4

make install

apt install gdb

cd /tmp
wget http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
apt-key add erlang_solutions.asc
apt-get update
echo y | apt-get install erlang
echo y | apt-get install erlang-nox
echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
cd /tmp
wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
apt-key add rabbitmq-signing-key-public.asc
apt-get update
echo y |apt-get install rabbitmq-server

docker commit -p bd13e7ebb93c container-backup


mkdir ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

yaourt -S folly --noconfirm
wget https://github.com/facebook/folly/archive/master.zip
mkdir _build && cd _build
cmake ..
make -j $(nproc)
make install
echo y | pacman -S Baobab
echo y | pacman -S bleachbit


apt-get install zsh git tmux vim wget mlocate cmake clang
