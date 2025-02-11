# autogit - Git Automation Script

This script automates the process of adding, committing, and pushing changes to a Git repository. It prompts the user for a commit message, then executes the necessary Git commands with error handling. It also includes a feature to automatically install itself to `/usr/local/bin` for system-wide access.

## Features

-   Prompts the user for a commit message.
-   Adds all changes to the staging area (`git add .`).
-   Commits changes with the provided message (`git commit -m "message"`).
-   Pushes changes to the remote repository (`git push`).
-   Includes error handling for each Git command.
-   Automatically installs itself to `/usr/local/bin` for system-wide access, if not already there.

## Usage

### Prerequisites

-   **Git**: Ensure that Git is installed and configured on your system.
-   **Bash**: This script is written in Bash, so ensure you have a Bash environment.
-   **Sudo Access**: You will need sudo privileges to install the script to `/usr/local/bin`.

### Steps to Use

1.  **Clone the repository (Optional)**:
    If you want to obtain the script from the GitHub repository, you can clone it using:

    ```
    git clone https://github.com/MohammedAzharKK/github_autopush_script.git
    ```

2.  **Save the script**:
    If you didn't clone the repository, save the provided script to a file named `autogit.sh` (or any name you prefer with a `.sh` extension).

3.  **Make the script executable**:
    Open your terminal and navigate to the directory where you saved the script. Then, grant execute permissions to the script by typing:

    ```
    chmod +x autogit.sh
    ```

4.  **Run the script**:
    Execute the script with the following command:

    ```
    ./autogit.sh
    ```

    The script will first check if it's located in `/usr/local/bin`. If not, it will prompt you to move it there.

5.  **Installation to `/usr/local/bin` (First Run)**:
    If the script is not in `/usr/local/bin`, it will ask to move itself. This allows you to run the script from anywhere in the terminal.

    -   If prompted, enter your sudo password to allow the script to copy itself to `/usr/local/bin`.
    -   After installation, the script will print a message indicating that it's installed system-wide.

6.  **Using the script after installation**:
    Once installed in `/usr/local/bin`, you can run the script from any directory by simply typing:

    ```
    autogit
    ```

7.  **Provide a commit message**:
    The script will prompt you to enter a commit message. Type your message and press Enter.

    -   Ensure the commit message accurately describes your changes.
    -   If you enter an empty commit message, the script will exit with an error.

8.  **Observe the output**:
    The script will display the output of each Git command, including any error messages.

    -   If any Git command fails, the script will exit with an error code.
    -   If all commands are successful, the script will print a "Success" message.

## Error Handling

The script includes error handling for the following Git commands:

-   `git add .`
-   `git commit -m "message"`
-   `git push`

If any of these commands fail, the script will print an error message and exit with a non-zero exit code.

## Notes

-   This script assumes that you are already in a Git repository.
-   Ensure that your remote repository is properly configured before running the script.
-   Be careful when using `git add .`, as it will add all changes in your working directory to the staging area.
