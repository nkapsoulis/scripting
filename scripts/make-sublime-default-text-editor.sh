#!/bin/bash

sudo echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text
GenericName=Text Editor
Comment=Sophisticated text editor for code, markup and prose
Exec=/opt/sublime_text/sublime_text %F
Terminal=false
MimeType=text/plain;
Icon=sublime-text
Categories=TextEditor;Development;
StartupNotify=true
Actions=new-window;new-file;

[Desktop Action new-window]
Name=New Window
Exec=/opt/sublime_text/sublime_text --launch-or-new-window
OnlyShowIn=Unity;

[Desktop Action new-file]
Name=New File
Exec=/opt/sublime_text/sublime_text --command new_file
OnlyShowIn=Unity;
" > /usr/share/applications/sublime_text.desktop

sudo cp /usr/share/applications/defaults.list /usr/share/applications/defaults.list.old

sudo find /usr/share/applications/ -name "defaults.list" -exec sed -i 's/org.gnome.gedit/sublime_text/g' {} \;

while true; do
    read -p "Do you wish to logout now? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) gnome-session-quit; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer Y/y or N/n.";;
    esac
done
