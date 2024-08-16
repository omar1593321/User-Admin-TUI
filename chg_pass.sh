#!/bin/bash

    user_to_change=$(whiptail --inputbox "Please enter the username to change the password:" 8 39 3>&1 1>&2 2>&3)
    if [ $? != 0 ] || [ -z "$user_to_change" ]; then
        echo "Operation cancelled. Exiting..."
        exit 1
    fi

    # Check if the user exists
    if id "$user_to_change" &>/dev/null; then
        password=$(whiptail --passwordbox "Enter new password for user $user_to_change:" 8 39 3>&1 1>&2 2>&3)
        if [ $? = 0 ] && [ ! -z "$password" ]; then
            echo "$user_to_change:$password" | sudo chpasswd
            if [ $? = 0 ]; then
                whiptail --msgbox "Password for user $user_to_change has been changed successfully." 8 39
            else
                whiptail --msgbox "Failed to change password for user $user_to_change. Please try again." 8 39
            fi
        else
            whiptail --msgbox "No changes made. Password change operation cancelled." 8 39
        fi
    else
        whiptail --msgbox "User $user_to_change does not exist. Please choose another username." 8 39
    fi
