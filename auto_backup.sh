#!/bin/bash

#
# Automatically backup files for linux installation/recover
#
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
	cp $HOME/.config/Typora/themes $HOME/Documents/dotfiles/auto_backup_data/typora_themes -rf

	# aria2
	cp $HOME/.aria2 $HOME/Documents/dotfiles/auto_backup_data/aria2 -rf

	# zshrc
	cp $HOME/.zshrc $HOME/Documents/dotfiles/auto_backup_data/zshrc

	# crontab
	crontab -l > $HOME/Documents/dotfiles/auto_backup_data/cron-backup.txt

	# pip
	cp $HOME/.pip/pip.conf $HOME/Documents/dotfiles/auto_backup_data/pip.conf

	# change access
	chmod -R 777 $HOME/Documents/dotfiles/auto_backup_data
}
main "$@"