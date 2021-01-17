#!/bin/bash
DIR="/opt/AS4/"
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
     rm /opt/AS4/mendelson_opensource_AS4.lock
     /opt/AS4/as4_start.sh
else
    echo "$DIR is Empty"
    wget https://sourceforge.net/projects/mendelson-as4/files/install_mendelson_opensource_as4_1.0b29.zip/download
    unzip download
    chmod +x /opt/AS4/as4_start.sh
    /opt/AS4/as4_start.sh
fi