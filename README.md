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
chmod +x *
./main_menu.sh
```
## Usage
Follow the on-screen prompts to manage users and groups efficiently. The menu-driven interface guides you through each step, ensuring a smooth and error-free experience.

### Screenshots:
![Screenshot 2024-08-16 150313](https://github.com/user-attachments/assets/bcf8e69a-f56b-4197-a4d4-c15098d8ca30)
![Screenshot 2024-08-16 150330](https://github.com/user-attachments/assets/196d0efa-c8ef-4b64-8ab8-48a63d37b9b6)
![Screenshot 2024-08-16 150349](https://github.com/user-attachments/assets/c531f539-f4a8-411a-aa91-cab5859684d6)
![Screenshot 2024-08-16 150416](https://github.com/user-attachments/assets/1c7c67c3-ab36-402d-8a1f-8904dec867e1)
![Screenshot 2024-08-16 150434](https://github.com/user-attachments/assets/44e2f09b-1887-4a03-8554-867843f68baa)
![Screenshot 2024-08-16 150519](https://github.com/user-attachments/assets/fbcf9201-f52f-4731-8211-f4de09d233ae)

