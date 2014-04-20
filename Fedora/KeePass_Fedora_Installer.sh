#!/bin/bash

if ! rpm -qa | grep -q wget; then
	yum -y install wget
fi
wget "http://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.26/KeePass-2.26.zip?r=&ts=1397896195&use_mirror=tcpdiag" -O KeePass-2.26.zip
wget "http://upload.wikimedia.org/wikipedia/commons/1/19/KeePass_icon.png" -O KeePass_icon.png
wget "https://raw.githubusercontent.com/jonje/Scripts/master/resources/KeePass.desktop" -O KeePass.desktop 
wait
mkdir /usr/bin/KeePass
unzip KeePass-2.26.zip -d /usr/bin/KeePass/

mv KeePass_icon.png /usr/bin/KeePass/KeePass_icon.png

mv KeePass.desktop /usr/share/applications/
yum -y install mono-core
yum -y install mono-devel

