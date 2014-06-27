#!/bin/bash

SOURCE="/home/jjensen/Downloads"
PDFDEST="/home/jjensen/Documents/PDF"

cd $SOURCE

#remove these file types
find $SOURCE -type f -name '*.torrent' -exec rm {} \;
find $SOURCE -type f \( -name '*.tar' -o -name '*.tar.gz' -o -name '*.tar.bz' \) -exec rm {} \;
find $SOURCE -type f -name '*.zip' -exec rm {} \;

#move all pdf's to specified dir
find $SOURCE -type f -name '*.pdf' -exec mv {} $PDFDEST \;
