#!/bin/bash
rc=config/openbox/rc.xml
autostart=config/openbox/autostart
compton=config/compton.conf
if [ ! -d ~/.config/openbox ]; then 
mkdir ~/.config/openbox
fi
install () {
if [ -e ~/.$1 ]; then 
	read -p "Backup and replace ~/.$1 (y/n)?" option
	if [ "$option" = "y" ]; then
		mv ~/.$1 ~/.$1.backup
		mv $1 ~/.$1
	fi
	else
		mv $1 ~/.$1
fi
} 
install $rc openbox
install $autostart openbox
install $compton