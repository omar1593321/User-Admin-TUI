#!/bin/bash
adduser=$(whiptail --inputbox "Please enter the username:" 8 39 3>&1 1>&2 2>&3)
        if [ $? != 0 ] || [ -z "$adduser" ]; then
            echo "Operation cancelled. Exiting..."
            exit 1
        fi
        
        # Check if the user already exists
        if id "$adduser" &>/dev/null; then
            whiptail --msgbox "User $adduser already exists. Please choose another username." 8 39
        else
            sudo useradd $adduser
            if [ $? = 0 ]; then
                whiptail --msgbox "User $adduser has been added." 8 39
            else
                whiptail --msgbox "Failed to add user $adduser. Please try again." 8 39
            fi
        fi
