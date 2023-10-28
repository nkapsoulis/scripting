#!/bin/bash

cd ~/Downloads/
wget "https://www.zotero.org/download/client/%dl?channel=release&platform=linux-x86_64&version=6.0.18"
tar vxf dl\?channel\=release\&platform\=linux-x86_64\&version\=6.0.18
# Close Libreoffice
echo "alias zotero='/home/"$USER"/Downloads/Zotero_linux-x86_64/zotero'" >> ~/.bashrc
echo "
#!/usr/bin/env xdg-open

[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Icon[en_US]=gnome-panel-launcher
Name[en_US]=Zotero
Exec=./Downloads/Zotero_linux-x86_64/zotero # Click Allow launching
Name=Zotero
Icon=/home/$USER/Downloads/zotero.svg
"
# Desktop->Zotero.desktop or
zotero
