#!/usr/bin/env bash
set -euo pipefail

name="${1:-}"
if [[ -z "$name" ]]; then
  echo "usage: npm run snapshot -- <snapshot-name>"
  exit 1
fi

git add .
if git diff --cached --quiet; then
  echo "No changes to snapshot."
else
  git commit -m "snapshot: ${name}"
fi

git tag -f "snapshots/${name}"
echo "Snapshot ready: snapshots/${name}"
