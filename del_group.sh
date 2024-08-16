#!/bin/bash

 delgroup=$(whiptail --inputbox "Please enter the group name to delete:" 8 39 3>&1 1>&2 2>&3)
        if [ $? != 0 ] || [ -z "$delgroup" ]; then
            echo "Operation cancelled. Exiting..."
            exit 1
        fi

        # Check if the group exists
        if getent group "$delgroup" > /dev/null; then
            sudo groupdel "$delgroup"
            if [ $? = 0 ]; then
                whiptail --msgbox "Group $delgroup has been deleted." 8 39
            else
                whiptail --msgbox "Failed to delete group $delgroup. Please try again." 8 39
            fi
        else
            whiptail --msgbox "Group $delgroup does not exist. Please choose another group." 8 39
        fi
