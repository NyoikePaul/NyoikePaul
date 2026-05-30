#!/bin/bash
# 1. Cache credentials (lasts 15 mins)
git config --global credential.helper cache

# 2. Stage EVERYTHING (including new folders/images)
git add .

# 3. Commit with a timestamped message
msg="feat: portfolio update $(date +'%Y-%m-%d %H:%M')"
git commit -m "$msg"

# 4. Pull to sync with any remote changes
git pull origin main --rebase

# 5. Push
git push origin main

echo "--- Portfolio v3 Synced Successfully ---"
