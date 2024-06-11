!/bin/bash

# Check if a project name was provided
if [ -z "$1" ]; then
  echo "Please provide a project name"
  exit 1
fi

# Set variables
PROJECT_NAME=$1
BOILERPLATE_REPO="https://github.com/atiqisrak/nextjs-boilerplate.git"
NEW_REPO_URL="https://github.com/atiqisrak/$PROJECT_NAME.git"

# Clone the boilerplate repository
git clone $BOILERPLATE_REPO $PROJECT_NAME

# Change into the new project directory
cd $PROJECT_NAME

# Remove the existing .git directory
rm -rf .git

# Initialize a new git repository
git init

# Add the new remote origin
git remote add origin $NEW_REPO_URL

# Add all files and commit
git add .
git commit -m "Initial commit from boilerplate"

# Push to the new repository
git push -u origin main

echo "New project setup complete: $PROJECT_NAME"
# chmod +x setup_new_project.sh
