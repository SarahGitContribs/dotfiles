#!/bin/sh
directory () { 
if [ ! -d ~/.$1 ]; then 
	mkdir ~/.$1
fi
}
install () {
if [ -e ~/.$1 ]; then 
	read -p "Backup and replace ~/.$1 (y/n)?" option
	if [ "$option" = "y" ]; then
		mv ~/.$1 ~/.$1.bak
		mv $1 ~/.$1
	fi
	else
		mv $1 ~/.$1
fi
}
directory config/tint2
directory config/openbox
install config/tint2/tint2rc
install config/openbox/rc.xml
install config/openbox/autostart
install config/compton.conf
