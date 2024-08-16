# User-Admin-TUI
A comprehensive Text-based User Interface (TUI) for managing user accounts and groups on Linux systems. This project enhances system administration by providing an interactive, user-friendly interface for managing common administrative tasks.
## Features

### User Management
- **Add User:** 
  - Quickly add new users to the system with an interactive prompt.
  - Checks if the username already exists to avoid conflicts.
- **Modify User:**
  - Update user details such as home directory, UID, primary group, and more.
  - Features include:
    - **Allow Bad Names:** Enable usernames that don’t meet the default naming conventions.
    - **Change Home Directory:** Specify a new home directory for an existing user.
    - **Set Primary Group:** Change the primary group of a user.
    - **Lock/Unlock Account:** Temporarily disable or re-enable user accounts.
    - **Change UID:** Assign a new User ID to an existing account.
    - **Append Groups:** Add the user to additional groups without affecting current memberships.
  - Automatically checks if the user exists before attempting any modifications.
- **Delete User:**
  - Safely remove users from the system with confirmation prompts to prevent accidental deletions.
  - Validates user existence before proceeding with deletion.

### Group Management
- **Add Group:**
  - Create new groups with ease, ensuring group names are unique.
- **Modify Group:**
  - Update group details including member lists.
  - Checks if the group exists before allowing modifications.
- **Delete Group:**
  - Remove groups from the system with confirmation prompts.
  - Validates group existence before proceeding with deletion.
- **List Groups:**
  - Display all groups on the system, along with their members.

### Account Control
- **Disable User:**
  - Lock user accounts to prevent login.
  - Ensures the user exists before locking the account.
- **Enable User:**
  - Unlock user accounts, restoring login capabilities.
  - Checks user existence before unlocking.
- **Change Password:**
  - Change the password of a user securely.
  - Confirms user existence before proceeding with the password change.


### System Information
- **List Users:**
  - Display a list of all users currently on the system.
- **About:**
  - Provides information about the program, its purpose, and how to use it.

## Installation
Clone this repository and run the script on your Linux system:

```bash
git clone https://github.com/omar1593321/User-Admin-TUI.git
cd User-Admin-TUI
./main_menu.sh

## Usage
Follow the on-screen prompts to manage users and groups efficiently. The menu-driven interface guides you through each step, ensuring a smooth and error-free experience.

## Screenshots:
