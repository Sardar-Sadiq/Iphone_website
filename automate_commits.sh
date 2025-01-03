#!/bin/bash

# Change to the repository directory (current directory)
cd "$(dirname "$0")" || exit

# Branch name to work on
BRANCH_NAME="master"

# Switch to the master branch
git checkout "$BRANCH_NAME"

# Define start and end dates
START_DATE="2024-09-15"
END_DATE="2024-12-20"

# Convert dates to seconds
START_DATE_SEC=$(date -d "$START_DATE" +%s)
END_DATE_SEC=$(date -d "$END_DATE" +%s)

# Loop through each day in the date range
CURRENT_DATE_SEC=$START_DATE_SEC

while [ "$CURRENT_DATE_SEC" -le "$END_DATE_SEC" ]; do
  # Generate a random number of commits for the day (5 to 15)
  COMMIT_COUNT=$((RANDOM % 11 + 5))  # Random number between 5 and 15

  for i in $(seq 1 $COMMIT_COUNT); do
    # Generate a random time within the day
    COMMIT_TIME=$((RANDOM % 86400)) # Seconds in a day
    COMMIT_TIMESTAMP=$((CURRENT_DATE_SEC + COMMIT_TIME))

    # Format the commit date
    COMMIT_DATE=$(date -d "@$COMMIT_TIMESTAMP" +"%Y-%m-%d %H:%M:%S")

    # Update the commit_log.txt file with a unique entry
    echo "Commit $i on $COMMIT_DATE" >> commit_log.txt

    # Stage the file
    git add commit_log.txt

    # Set the commit date and make the commit
    GIT_AUTHOR_DATE="$COMMIT_DATE" GIT_COMMITTER_DATE="$COMMIT_DATE" \
    git commit -m "Automated commit $i on $COMMIT_DATE"
  done

  # Increment the day
  CURRENT_DATE_SEC=$((CURRENT_DATE_SEC + 86400))
done

# Push changes to the remote repository
git push -u origin "$BRANCH_NAME"
