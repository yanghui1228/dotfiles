#!/bin/bash

#
# Automatically backup files for linux installation/recover
#
update_tracker ()
{
    local aria2_conf="$HOME/.aria2/aria2.conf"
    local current_os=`uname  -s`
    echo $current_os
    echo "Updating tracker list, please wait..."
    local list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/,/g'`
    if [ -z "`grep "bt-tracker" $aria2_conf`" ]; then
        echo -e "\nbt-tracker=$list" >>$aria2_conf
        echo bt-tracker added!
    else
        sed -i "s|bt-tracker.*$|bt-tracker=$list|g" "$aria2_conf"
        echo bt-tracker updated!
    fi
}

main()
{
	# backup sublime text 3 config files
	#cp $HOME/.config/sublime-text-3/Packages/User $HOME/Documents/dotfiles/auto_backup_data/sublime -rf

	# mpv config file
	cp $HOME/.config/mpv/mpv.conf $HOME/Documents/dotfiles/auto_backup_data/mpv.conf
	
	# vimrc
	# cp /home/yanghui/.vim/vimrc /home/yanghui/HDD1/ubuntu/auto_backup_data/vimrc
	cp $HOME/.vimrc $HOME/Documents/dotfiles/auto_backup_data/vimrc

	# samba config
	cp /etc/samba/smb.conf $HOME/Documents/dotfiles/auto_backup_data/smb.conf
	
	# fstab
	cp /etc/fstab $HOME/Documents/dotfiles/auto_backup_data/fstab

	# .git-credentials
	cp $HOME/.git-credentials $HOME/Documents/dotfiles/auto_backup_data/git-credentials

	# typora themes
	cp $HOME/.config/Typora/themes/* $HOME/Documents/dotfiles/auto_backup_data/typora_themes -rf

	# aria2
	cp $HOME/.aria2/* $HOME/Documents/dotfiles/auto_backup_data/aria2 -rf

	# zshrc
	cp $HOME/.zshrc $HOME/Documents/dotfiles/auto_backup_data/zshrc

	# crontab
	crontab -l > $HOME/Documents/dotfiles/auto_backup_data/cron-backup.txt

	# pip
	cp $HOME/.pip/pip.conf $HOME/Documents/dotfiles/auto_backup_data/pip.conf

	# hosts
	cp /etc/hosts $HOME/Documents/dotfiles/auto_backup_data/hosts
	
	# nvidia display
	cp /etc/X11/xorg.conf $HOME/Documents/dotfiles/auto_backup_data/xorg.conf
	cp $HOME/.config/monitors.xml $HOME/Documents/dotfiles/auto_backup_data/monitors.xml

	# xprofile (mouse speed)
	cp $HOME/.xprofile $HOME/Documents/dotfiles/auto_backup_data/xprofile
	
	# language render provile
	cp /etc/fonts/conf.d/60-latin.conf $HOME/Documents/dotfiles/auto_backup_data/60-latin.conf
	cp /etc/fonts/conf.d/64-language-selector-prefer.conf $HOME/Documents/dotfiles/auto_backup_data/64-language-selector-prefer.conf
	
	# locale
	cp /usr/share/i18n/locales/en_CN $HOME/Documents/dotfiles/auto_backup_data/locales/en_CN
	cp /var/lib/locales/supported.d/local $HOME/Documents/dotfiles/auto_backup_data/locales/local
	cp /etc/environment $HOME/Documents/dotfiles/auto_backup_data/locales/environment
	
	# change access
	chmod -R 777 $HOME/Documents/dotfiles/auto_backup_data
	
	# update tracker
    update_tracker
    
    # git push
    cd $HOME/Documents/dotfiles
    git add *
    git commit -m 'update linux dotfiles'
    git push
}
main "$@"
