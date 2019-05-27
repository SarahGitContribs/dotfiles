#!/bin/bash
openbox=~/.config/openbox
rc=~/.config/openbox/rc.xml
autostart=~/.config/openbox/autostart
compton=~/.config/compton.conf
if [ -e  $rc ]; then 
	read -p "Backup and replace rc.xml (y/n)?" option
	if [ "$option" = "y" ]; then
		mv $rc $rc.backup
		mv config/openbox/rc.xml $rc
		echo "Done."
	fi
	else
		mkdir -p $openbox
		mv config/openbox/rc.xml $openbox
fi
if [ -e $autostart ]; then 
	read -p "Backup and replace autostart? (y/n)?" option
	if [ "$option" = "y" ]; then
		mv $autostart $autostart.backup
		mv config/openbox/autostart $autostart
		echo "Done."
	fi
	else
		mkdir -p $openbox
		mv config/openbox/autostart $openbox
fi
if [ -e $compton ]; then
	read -p "Backup and replace compton.conf (y/n)?" option
	if [ "$option" = "y" ]; then 
		mv $compton $compton.backup
		mv config/compton.conf $compton
	fi
	else
		mv config/compton.conf $compton
fi


