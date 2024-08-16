#!/bin/bash

groups=$(cut -d: -f1 /etc/group)
        whiptail --msgbox "Groups on the system:\n$groups" 0 0

