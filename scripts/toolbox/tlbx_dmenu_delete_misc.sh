#!/usr/bin/env bash

custom_dmenu=$CUSTOM_DMENU_PROMPT
answ=$(echo -e "Misc\nDownloads\nNone" | $custom_dmenu -i -p "Clear Files:") 

if [ $answ == "Downloads" ]; then
    rm -rf ~/Downloads/*

elif [ $answ == "Misc" ]; then
    ZOOM_DIR="/home/duclos/.config/Unknown*/"
    ZOOM_HOME=/home/duclos/.zoom/
    ZOOM_CONF=/home/duclos/.config/zoomus.conf
    QT_CONF=/home/duclos/.config/QtProject.conf
    PAVU_CONF=/home/duclos/.config/pavucontrol.ini

    [ -d $ZOOM_DIR ] && rm -r ${ZOOM_DIR}
    [ -d $ZOOM_HOME ] && rm -r ${ZOOM_HOME}
    [ -f $ZOOM_CONF ] && rm ${ZOOM_CONF}
    [ -f $QT_CONF ] && rm ${QT_CONF}
    [ -f $PAVU_CONF ] && rm ${PAVU_CONF}
fi

