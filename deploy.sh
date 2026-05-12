#!/bin/bash

# 1. Setup - Storing your credentials temporarily
# This ensures you don't have to keep pasting your token
git config --global credential.helper cache

# 2. Stage all changes
echo "--- Staging index.html ---"
git add index.html

# 3. Commit
# You can change the message here or pass it as an argument
MESSAGE="feat: full-stack portfolio v3 — slideshow, catalogue, Nairobi, Laravel"
git commit -m "$MESSAGE"

# 4. Pull to prevent "rejected" errors (Standardizes the local and remote)
echo "--- Pulling latest changes from GitHub ---"
git pull origin main --rebase --allow-unrelated-histories

# 5. Push and set upstream
echo "--- Pushing to GitHub ---"
git push -u origin main

echo "--- Done! Your v3 portfolio should be uploading now. ---"
