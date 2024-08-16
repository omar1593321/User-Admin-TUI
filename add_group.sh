#!/bin/bash

while true; do
            addgroup=$(whiptail --inputbox "Please enter the group name:" 8 39 3>&1 1>&2 2>&3)
            if [ $? != 0 ] || [ -z "$addgroup" ]; then
                echo "Operation cancelled. Exiting..."
                exit 1
            fi

            # Check if the group already exists
            if getent group "$addgroup" &>/dev/null; then
                whiptail --msgbox "Group $addgroup already exists. Please choose another group name." 8 39
            else
                sudo groupadd "$addgroup"
                if [ $? = 0 ]; then
                    whiptail --msgbox "Group $addgroup has been added." 8 39
                else
                    whiptail --msgbox "Failed to add group $addgroup. Please try again." 8 39
                fi
                break
            fi
        done
