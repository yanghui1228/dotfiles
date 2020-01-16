# UBUNTU LTS 18.04

## FSTAB

```shell
sudo -e /etc/fstab

```

and add below lines

```shell
#HDD
UUID=415efeb5-ecae-4c53-90c6-4e5701578b46 /home/yanghui/HDD1   ext4    noatime           0       2
```

## Simple Note

don't install with snap, too slow

## Typora

install Typora

## Sublime Text 3

remove g-Edit and install sublime text 3

```bash
sudo apt-get purge --auto-remove gedit
```

snippers:

```shell
~/.config/sublime-text-3/Packages/User
```

## Downloads/Videos Folder soft link

```shell
ln -s target_file link_name
```



## UBUNTU dock
plank
control + right click for configuration

## tweaks
```shell
sudo apt install gnome-tweaks
```

#### SNFS UI font
https://github.com/supermarin/YosemiteSanFranciscoFont

#### Ping Fang
https://github.com/paraself/PingFang-Fonts

#### MS Yahei Consolas
https://github.com/yakumioto/YaHei-Consolas-Hybrid-1.12

for terminal and sublime text 3

#### Noto Sans CJK 配置
https://www.zhihu.com/question/47141667?from=profile_question_card

```shell
sudo vim /etc/fonts/conf.d/64-language-selector-prefer.conf
```

#### Hiragino Sans GB

Firefox 默认中文字体

#### Monaco font in gnome terminal (optional)

https://github.com/cstrap/monaco-font/issues/4

need to copy font into /usr/share/fonts/truetype/custom

## Chinese input method

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
check if new version need install python2 first.

```shell
sudo sh ./VMware-Horizon-Client-5.2.0-14604769.x64.bundle
```

## music player
DeaDBeeF

## Linux gaming
https://lutris.net
Steam

## Video player
mpv - https://github.com/mpv-player/mpv
https://celluloid-player.github.io

mpv config file

```shell
~/.config/mpv/mpv.conf
```


## iCloud calendar sync with GNOME - calDAV
https://www.slightfuture.com/technote/gnome-caldav

## iCloud contacts sync -> cardDAV

no solution yet

## VIM
配置VIM
Vim Configuration Files:

```shell
vi ~/.vim/vimrc
```

Vim can be configured system wide (globally) via the /etc/vim/vimrc.local file on Ubuntu/Debian based operating systems.

## Download manager
install and config aria2

## NFS/samba
Install samba
https://blog.csdn.net/Stone_OverLooking/article/details/81508546

```shell
sudo apt-get install samba smbclient
sudo vim /etc/samba/smb.conf 
sudo service smbd restart
```

## 固定 IP

192.168.1.100

## Virtual machine

VirtualBox


## Cocos creator 
- Run on virtual windows 10

## WPS office 2019

## zsh
https://segmentfault.com/a/1190000018093021

## Python
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

https://blog.csdn.net/PyTtCcMm/article/details/86178680

### matplotlib

```shell
apt-get install python3-pyqt5
```

### Crontab

crontab setup for user[yanghui]

```shell
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

crontab setup for user[root]

```shell
MAILTO=''
SHELL=/bin/zsh
# backup configs
00 03 * * 1 sh /home/yanghui/HDD1/ubuntu/auto_backup.sh
```

check crontab mail

```shell
sudo apt install postfix
sudo tail /var/mail/username
```

## Check and Kill process

```shell
ps aux
kill {PID} 
```

list zombie process and kill it

```shell
ps axo stat,ppid,pid,comm | grep -w defunct
sudo kill -9 {PID}
```

## wine 字体

https://www.linuxidc.com/Linux/2019-03/157663.htm

## epub reader
Foliate

## ubuntu 更换国内源

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

## amule (no need anymore?)

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

