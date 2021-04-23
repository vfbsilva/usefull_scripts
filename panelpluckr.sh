#!/usr/bin/env bash
#               panelpluckr.sh               #
## To automate the killing of Plasma panels ##
#####                cscs                #####
sed -i.bak -e '/./{H;$!d;}' -e 'x;/ActionPlugins/b' -e '/[9]/b' -e '/ScreenMapping/b' -e d /home/$USER/.config/plasma-org.kde.plasma.desktop-appletsrc ;
qdbus org.kde.KWin /KWin reconfigure ; 
kquitapp5 plasmashell > /dev/null 2>&1 && kstart5 plasmashell > /dev/null 2>&1 ; 
echo -e "\nPanels now removed. Previous configuration file saved as\n\"plasma-org.kde.plasma.desktop-appletsrc.bak\"\n" ;
exit
