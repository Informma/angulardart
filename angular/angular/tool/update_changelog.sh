#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(dirname "$SCRIPT_DIR")"
PUBSPEC="$PACKAGE_DIR/pubspec.yaml"
CHANGELOG="$PACKAGE_DIR/CHANGELOG.md"

VERSION=$(grep '^version:' "$PUBSPEC" | sed 's/version: *//')
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")

if [ -z "$LAST_TAG" ]; then
  COMMITS=$(git log --pretty=format:"- %s" --no-merges)
else
  COMMITS=$(git log --pretty=format:"- %s" --no-merges "${LAST_TAG}..HEAD")
fi

if [ -z "$COMMITS" ]; then
  echo "No new commits since last tag. Nothing to do."
  exit 0
fi

if grep -q "^## ${VERSION}" "$CHANGELOG"; then
  echo "CHANGELOG already has entry for version $VERSION. Skipping."
  exit 0
fi

DATE=$(date +%Y-%m-%d)
ENTRY="## ${VERSION}

${COMMITS}

"

TMPFILE=$(mktemp)
printf '%s' "$ENTRY" > "$TMPFILE"
cat "$CHANGELOG" >> "$TMPFILE"
mv "$TMPFILE" "$CHANGELOG"

echo "Added CHANGELOG entry for version $VERSION"
