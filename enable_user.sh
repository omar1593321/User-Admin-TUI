#!/bin/bash

enable_user=$(whiptail --inputbox "Please enter the username to enable:" 8 39 3>&1 1>&2 2>&3)
    if [ $? != 0 ] || [ -z "$enable_user" ]; then
        echo "Operation cancelled. Exiting..."
        exit 1
    fi

    # Check if the user exists
    if id "$enable_user" &>/dev/null; then
        sudo usermod -U "$enable_user"
        if [ $? = 0 ]; then
            whiptail --msgbox "User $enable_user has been enabled (unlocked) successfully." 8 39
        else
            whiptail --msgbox "Failed to enable user $enable_user. Please try again." 8 39
        fi
    else
        whiptail --msgbox "User $enable_user does not exist. Please choose another username." 8 39
    fi
