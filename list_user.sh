#!/bin/bash

users=$(cut -d: -f1 /etc/passwd)
        whiptail --msgbox "Users on the system:\n$users" 0 0
