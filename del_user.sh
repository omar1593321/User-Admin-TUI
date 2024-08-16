#!/bin/bash

deluser=$(whiptail --inputbox "Please enter the username to delete:" 8 39 3>&1 1>&2 2>&3)
        if [ $? != 0 ] || [ -z "$deluser" ]; then
            echo "Operation cancelled. Exiting..."
            exit 1
        fi
        sudo userdel -r  "$deluser"
        if [ $? = 0 ]; then
            whiptail --msgbox "User $deluser has been deleted." 8 39
        else
            whiptail --msgbox "Failed to delete user $deluser. Please try again." 8 39
        fi
