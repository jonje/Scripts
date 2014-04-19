#!/bin/bash
yum -y install mono-core
yum -y install mono-devel
mkdir /usr/bin/KeePass

if rpm -qa | grep -q wget; then
	wget http://sourceforge.net/projects/keepass/files/KeePass%202.x/2.26/KeePass-2.26.zip/download?accel_key=77%3A1397887777%3Ahttp%253A//keepass.info/download.html%3Ae49b83c7%2442662cbc0291be4b61413dd22bae180bc244eae5&click_id=2f7f50ca-c789-11e3-88c2-0200ac1d1d9c-3&source=accel 
else
	yum -y install wget
fi
unzip KeePass-2.26.zip -d /usr/bin/KeePass/
wget http://upload.wikimedia.org/wikipedia/commons/1/19/KeePass_icon.png
mv KeePass_icon.png /usr/bin/KeePass/KeePass_icon.png
wget https://github.com/jonje/Scripts/blob/master/resources/KeePass.desktop
mv KeePass.desktop /usr/share/applications/
