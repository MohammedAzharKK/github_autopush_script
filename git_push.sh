#!/bin/bash

# Automatically move the script to /usr/local/bin if not already there
SCRIPT_NAME="autogit"
TARGET_PATH="/usr/local/bin/$SCRIPT_NAME"

if [[ $(realpath "$0") != "$TARGET_PATH" ]]; then
    echo "Moving script to /usr/local/bin for system-wide access..."
    sudo cp "$0" "$TARGET_PATH"
    sudo chmod +x "$TARGET_PATH"
    echo "Script installed system-wide. Run it from anywhere using: $SCRIPT_NAME"
    exit 0  # Exit after installation
fi

# -----------------------------------------------------------------
# Git Automation Script
# -----------------------------------------------------------------

# Prompt the user for a commit message
echo "Enter your commit message:"
read commit_message

# Check if commit message is empty
if [ -z "$commit_message" ]; then
  echo "Error: Commit message cannot be empty."
  exit 1
fi

# Execute Git commands with error handling
echo "Running 'git add .'..."
if ! git add .; then
  echo "Error: Failed to add files to staging area."
  exit 1
fi

echo "Running 'git commit -m \"$commit_message\"'..."
if ! git commit -m "$commit_message"; then
  echo "Error: Failed to commit changes."
  exit 1
fi

echo "Running 'git push'..."
if ! git push; then
  echo "Error: Failed to push changes to remote repository."
  exit 1
fi

echo "Success: Git add, commit, and push completed!"

