#!/bin/bash
# Pull the latest generated script, then apply it to the BrandComposer calendar.
# The generated AppleScript clears its own date range first, so re-running is safe.
set -euo pipefail

REPO="$HOME/brandcomposer-calendar"
SCRIPT="$REPO/update-calendar.scpt"

cd "$REPO"

echo "--- $(date '+%Y-%m-%d %H:%M:%S') deploy start ---"

# Fast-forward only: never clobber local work, just fail and leave it alone.
if ! /usr/bin/git pull --ff-only origin main; then
  echo "git pull failed (local changes or diverged history). Not applying."
  exit 1
fi

if [ ! -f "$SCRIPT" ]; then
  echo "No script at $SCRIPT. Nothing to apply."
  exit 1
fi

# Re-check the pulled script before letting it touch the calendar.
if [ -f "$REPO/validate-calendar.py" ]; then
  if ! /usr/bin/python3 "$REPO/validate-calendar.py" "$SCRIPT"; then
    echo "Pulled script failed validation. Not applying."
    exit 1
  fi
fi

/usr/bin/osascript "$SCRIPT"
echo "--- deploy done ---"
