---
title: UBUNTU DOTFILE configuration
author: Yang Hui
keywords: word1, word2, word3
style: github.css
numbering: false
---

# UBUNTU DOTFILE configuration

## 📔 FSTAB

```shell
sudo -e /etc/fstab
```

and add below lines

```shell
# HDD
UUID=415efeb5-ecae-4c53-90c6-4e5701578b46 /home/yanghui/HDD1   ext4    noatime           0       2
```

## 🔗 Downloads/Videos/Music Folder soft link 

```shell
ln -s target_file link_name
```

## 🔁 swap

```shell
禁用swap
sudo swapoff /swapfile
修改swap 空间
sudo dd if=/dev/zero of=/swapfile bs=1M count=4096
设置文件为“swap file”类型
sudo mkswap /swapfile
启用swapfile
sudo swapon /swapfile
```

## 🔯 extension

user theme

```shell
# themelib - 
~/.local/share/.themes
```



## 🔧 tweaks
```shell
sudo apt install gnome-tweaks
```

## 🔠 Fonts

```zsh
# fonts libs
/usr/share/fonts
/usr/local/share/fonts
~/.local/share/fonts
```

refresh the fonts cache
```zsh
sudo fc-cache -f -v
```

### UI - SF Pro Display Regular

### Hiragino Sans GB （default for SanSerif font)

### Noto Serif CJK (default for Serif font)

### Document - SF Pro Text Regular (optional?)
### Source Code Pro (default for mono font)
### Ping Fang
[PingFang Fonts](https://github.com/paraself/PingFang-Fonts)
### Noto Sans CJK 配置

Note: On ubuntu english version, the noto fonts are placed JP language first which caused some chinese fonts not displayed correctly. So need to replace with language specific noto fonts.
[Google Noto CJK](http://www.google.cn/get/noto/help/cjk/)
[Chinese Characters for ubuntu on Zhihu.com](https://www.zhihu.com/question/47141667?from=profile_question_card)

```shell
sudo vim /etc/fonts/conf.d/30-cjk-aliases.conf
sudo vim /etc/fonts/conf.d/64-language-selector-prefer.conf
sudo vim /etc/fonts/conf.d/60-latin.conf
```

### 方正细金陵简体 （optional）

### 方正屏显雅宋 (optional)



### Monaco font in gnome terminal (optional)

https://github.com/cstrap/monaco-font/issues/4
need to copy font into /usr/share/fonts/truetype/custom

## Icon & Theme

### Icon - WhiteSur
```zsh
cd /home/yanghui/.local/share/icons/WhiteSur/apps/scalable
sudo cp /home/yanghui/HDD1/ubuntu/Citrus-icon-theme/src/scalable/apps/baidunetdisk.svg /usr/share/icons/Numix-Circle/48/apps

appliation icons:
/usr/share/applications
~/.local/share/applications
```
####	刷新图标缓存

```shell
update-icon-caches /home/yanghui/.local/share/icons/* 
```

### Theme
WhiteSur-gtk-theme-master

## Chinese input method - RIME (no need for ubuntu 20.04)

```shell
sudo apt-get install ibus-rime
vi ~/.config/ibus/rime/default.yaml
schema_list:   
  - schema: luna_pinyin_simp #simp是简体，第一位是默认输入法 
menu:
  page_size: 9 #每页候选词个数
ascii_composer:
  switch_key:
    Shift_L: commit_code #左shift提交字母
```

## VMware Horizon Client for linux

```shell
sudo sh ./VMware-Horizon-Client-5.2.0-14604769.x64.bundle
```

## 🎵 music player
DeaDBeeF

## 🎮 Linux gaming

Steam

## 🎬 Video player
ubuntu 20.04可直接安装[Celluloid](https://celluloid-player.github.io)，不需要安装mpv和配置，方便不少。

```shell
sudo apt install Celluloid
```

```shell
# mpv config file
~/.config/mpv/mpv.conf
```

## 📬 email

geary (with outlook account)
imap:outlook.office365.com
smtp:smtp.office365.com startTLS


## 📃 VIM

```shell
# Vim Configuration Files
sudo apt install vim
vi ~/.vim/vimrc
```

## 📜 Gedit

```shell
sudo apt install gedit-plugins
wget https://raw.githubusercontent.com/maateen/gedit-material-theme/master/material-theme.xml -O ~/.local/share/gedit/styles/material-theme.xml
```

Vim can be configured system wide (globally) via the /etc/vim/vimrc.local file on Ubuntu/Debian based operating systems.

## 📥 Download manager
install and config aria2

startup application - 

/bin/aria2c --conf-path=/home/yanghui/.aria2/aria2.conf -D

## 🔃 NFS/samba
Install [samba](https://blog.csdn.net/Stone_OverLooking/article/details/81508546)

```shell
sudo apt-get install samba smbclient
sudo vim /etc/samba/smb.conf 
sudo service smbd restart
```

## 🖼 viewnior
```shell
sudo apt purge eog
sudo apt install viewnior
```

## 🔳 固定 IP

192.168.1.100

## 🖥 Virtual machine

vmware player 16

### shrink the virtual machine

```shell
cd 'C:\Program Files\VMware\VMware Tools'
.\VMwareToolboxCmd disk shrink C:\
```


## 🎮 Cocos creator (optional)
Run on vmware on windows 10

## 🗃 WPS office 2019

## 🔳 zsh
```shell
# install oh my zsh
sudo apt install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# set zsh as default
sudo -s
chsh -s /bin/zsh root
chsh -s /bin/zsh username
# recover ~/.zshrc from backup
```

[安装oh my zsh插件](https://segmentfault.com/a/1190000018093021)

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
## 🐍 Python
### pip3 国内源
```shell
mkdir ~/.pip
vim ~/.pip/pip.conf
```

然后将下面这两行复制进去就好了

```shell
[global]
index-url = https://mirrors.aliyun.com/pypi/simple
```

### TA-lib install

[TA-lib instruction](https://mrjbq7.github.io/ta-lib/install.html)

### pip packages to install
```shell
sudo apt install python3-pip

pip install TA-Lib html5lib future baostock pandas matplotlib pandas lxml bs4 aiohttp statsmodels jinja2 colorlog
```

### crontab (no sudo)

crontab setup for user [yanghui]

```bash
Crontab -e
Crontab -l
Crontab -r
MAILTO=''
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
SHELL=/bin/zsh
# tushare download service   
30 14 * * 1,2,3,4,5 python3 $HOME/Documents/quantest/tushare/hindenburgOmenV1.py
00 16 * * 1,2,3,4,5 python3 $HOME/Documents/quantest/tushare/tushare_auto_downloader_v4.py
# baostock download service
30 17 * * 1,2,3,4,5 python3 $HOME/Documents/quantest/baoStock/baostockAutoDownloaderV4.py
# 东方财富国家队新近股票追踪
30 08 * * 1,2,3,4,5,6 python3 $HOME/Documents/quantest/eastmoney.com/state_capital_v1.py
# 东方财富每日行业涨幅排名
15 20 * * 1,2,3,4,5 python3 $HOME/Documents/quantest/eastmoney.com/industry_turn_around_v1.py
# gaoqing.la
00 18 * * 0,1,2,3,4,5,6 python3 $HOME/Documents/quantest/Other/gaoQing/gaoQing/spiders/gaoQing2.py
```

check crontab mail (optional)

```shell
sudo apt install postfix
sudo tail /var/mail/username
```

## 🔳 Check and Kill process

```shell
ps aux
kill {PID} 
```

list zombie process and kill it

```shell
ps axo stat,ppid,pid,comm | grep -w defunct
sudo kill -9 {PID}
```

## 📰 epub reader
Foliate

## 🔳 ubuntu 更换国内源 (optional)

#备份

```shell
cp /etc/apt/sources.list /etc/apt/sources.list.bak
```

在/etc/apt/sources.list文件前面添加如下条目

```shell
#添加阿里源
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
```

## 🐴 amule (optional)

https://www.wendangwang.com/doc/44244f4230c7557b781be223

https://blog.csdn.net/unixboy_xujf/article/details/83288619

```shell
sudo apt-get install amule-daemon
vi /etc/default/amule-daemon
change below:
AMULED_USER=”yanghui”
AMULED_HOME=”/home/yanghui”

vi ~/.aMule/amule.conf
Password= #这行，需要填入用户设置的password的MD5值
AcceptExternalConnections=1
ECPassword= #这行，需要填入用户设置的password的MD5值

echo -n yourpasswordhere | md5sum
/etc/init.d/amule-daemon start
or 
amuled -f

stop service - 
/etc/init.d/amule-daemon stop

manage the downloads - 
amulecmd
```

## 🔳 Gnome file roller 乱码

在/etc/environment中加入以下两行：

```zsh
UNZIP="-O CP936"
ZIPINFO="-O CP936"
```

```zsh
sudo apt-get remove p7zip-full p7zip
```

## 🔳 Disable recent files (optional)

```zsh
sudo chattr +i ~/.local/share/recently-used.xbel
```

## 🔳 Remove snap

```zsh
snap list
sudo snap remove <package>
sudo umount /snap/core/xxxx
sudo umount /var/snap
sudo apt purge snapd

rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd
```



## 🗜 RAR 解压

```zsh
sudo apt install unrar
```

## git save credential

```zsh
# it will store in file ~/.git-credentials
$ git config --global credential.helper store
```
git config --global user.email "stevenyanghui@qq.com"
git config --global user.name "yanghui"

### new ssh key
[generate new ssh key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### add ssh key to github.com


## ubuntu 20.04 nvidia driver issue

xrandr --screen 0

```zsh
1) Edit /etc/config/grub to remove 'splash' from GRUB_CMDLINE_LINUX_DEFAULT
2) Regenerate /boot/grub/grub.cfg with 'sudo update-grub'
3) Regenerate the initrd.img files by using 'sudo apt-get --reinstall install' 
to reinstall the currently installed kernel packages.
```

### fix the login monitor issue

```zsh
sudo cp ~/.config/monitors.xml ~gdm/.config/
```

### nvidia setting

/etc/X11/xorg.conf

[can't rotate monitor on](https://askubuntu.com/questions/1230570/cant-rotate-monitor-on-20-04)

## 截屏

- `PrtSc` – 获取整个屏幕的截图并保存到 Pictures 目录。
- `Shift + PrtSc` – 获取屏幕的某个区域截图并保存到 Pictures 目录。
- `Alt + PrtSc` –获取当前窗口的截图并保存到 Pictures 目录。
- `Ctrl + PrtSc` – 获取整个屏幕的截图并存放到剪贴板。
- `Shift + Ctrl + PrtSc` – 获取屏幕的某个区域截图并存放到剪贴板。
- `Ctrl + Alt + PrtSc` – 获取当前窗口的 截图并存放到剪贴板。

## 蓝牙自动连接

```shell
bluetoothctl connect EC:FA:5C:43:6C:28 
```

## VMware player

```shell
sudo vi /usr/share/applications/vmware-player.desktop
Exec=/usr/bin/vmplayer '/home/yanghui/vmware/Windows 10 x64/Windows 10 x64.vmx'
```

## How to change the date display to international format

- restore /usr/share/i18n/locales/en_CN

- restore /var/lib/locales/supported.d/local
- sudo dpkg-reconfigure locales

- restore /etc/environment
- Reboot/relogin, Now you should have dates displayed like this: 2007-01-18.

## Firefox about:config
 - mousewheel.system_scroll_override.vertical.factor = 400
 - gfx.webrender.all = true

## markdown editor
[Marker Website](https://fabiocolacio.github.io/Marker/#:~:text=Marker%20is%20a%20simple%20yet%20robust%20markdown%20editor,customized%20to%20meet%20the%20needs%20of%20any%20workflow%21)
style_sheet is in `/usr/share/com.github.fabiocolacio.marker/styles` 

