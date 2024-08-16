#!/bin/bash

# Main Menu
choice=$(whiptail --title "Main Menu" --menu "Please select what you want to do" 0 0 0 \
"Add User" "Add a user to the system"  \
"Modify User" "Modify an existing user"  \
"Delete User" "Delete an existing user"  \
"List Users" "List all users on the system" \
"Add Group" "Add a user group to the system"  \
"Modify Group" "Modify a group and its list of members" \
"Delete Group" "Delete an existing group" \
"List Groups" "List all groups on the system" \
"Disable User" "Lock the user account" \
"Enable User" "Unlock the user account" \
"Change Password" "Change Password of a user" \
"About" "Information about this program" \
3>&1 1>&2 2>&3)

# Check if the user canceled the selection
if [ $? != 0 ]; then
    echo "Operation cancelled. Exiting..."
    exit 1
fi

case $choice in
    "Add User")

			./add_user.sh
        ;;

    "Modify User")

			./mod_user.sh
        ;;

    "Delete User")
			./del_user.sh

        ;;

    "List Users")
			./list_user.sh

        ;;

    "Add Group")
			./add_group.sh

        ;;

    "Modify Group")
			./mod_group.sh

        ;;

    "Delete Group")
			./del_group.sh

        ;;

    "List Groups")
			./list_group.sh

        ;;

    "Disable User")
			./disable_user.sh

        ;;

    "Enable User")
			./enable_user.sh

        ;;

    "Change Password")
			./chg_pass.sh

        ;;

    "About")
			./about.sh

        ;;

    *)
        echo "Invalid option selected. Exiting..."
        ;;
esac
