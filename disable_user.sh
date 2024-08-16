#!/bin/bash

disable_user=$(whiptail --inputbox "Please enter the username to disable:" 8 39 3>&1 1>&2 2>&3)
    if [ $? != 0 ] || [ -z "$disable_user" ]; then
        echo "Operation cancelled. Exiting..."
        exit 1
    fi

    # Check if the user exists
    if id "$disable_user" &>/dev/null; then
        sudo usermod -L "$disable_user"
        if [ $? = 0 ]; then
            whiptail --msgbox "User $disable_user has been disabled." 8 39
        else
            whiptail --msgbox "Failed to disable user $disable_user. Please try again." 8 39
        fi
    else
        whiptail --msgbox "User $disable_user does not exist. Please choose another username." 8 39
    fi
