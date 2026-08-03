#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(dirname "$SCRIPT_DIR")"
PUBSPEC="$PACKAGE_DIR/pubspec.yaml"
CHANGELOG="$PACKAGE_DIR/CHANGELOG.md"

cd "$PACKAGE_DIR"

BUMP_TYPE="${1:-}"

if [[ ! "$BUMP_TYPE" =~ ^(patch|minor|major)$ ]]; then
  echo "Usage: $0 <patch|minor|major>"
  echo ""
  echo "  patch  - 8.0.19 -> 8.0.20 (bug fixes)"
  echo "  minor  - 8.0.19 -> 8.1.0  (new features)"
  echo "  major  - 8.0.19 -> 9.0.0  (breaking changes)"
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "Error: Working directory is not clean. Commit or stash changes first."
  exit 1
fi

CURRENT_VERSION=$(grep '^version:' "$PUBSPEC" | sed 's/version: *//')
IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"

case "$BUMP_TYPE" in
  patch) PATCH=$((PATCH + 1)) ;;
  minor) MINOR=$((MINOR + 1)); PATCH=0 ;;
  major) MAJOR=$((MAJOR + 1)); MINOR=0; PATCH=0 ;;
esac

NEW_VERSION="${MAJOR}.${MINOR}.${PATCH}"
LAST_TAG="v${CURRENT_VERSION}"

if ! git rev-parse "$LAST_TAG" >/dev/null 2>&1; then
  LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")
fi

if [ -z "$LAST_TAG" ]; then
  COMMITS=$(git log --pretty=format:"- %s" --no-merges -- "$PACKAGE_DIR")
else
  COMMITS=$(git log --pretty=format:"- %s" --no-merges "${LAST_TAG}..HEAD" -- "$PACKAGE_DIR")
fi

if [ -z "$COMMITS" ]; then
  echo "No new commits since last tag. Nothing to release."
  exit 0
fi

DATE=$(date +%Y-%m-%d)
ENTRY="## ${NEW_VERSION}

${COMMITS}

"

TMPFILE=$(mktemp)
printf '%s' "$ENTRY" > "$TMPFILE"
cat "$CHANGELOG" >> "$TMPFILE"
mv "$TMPFILE" "$CHANGELOG"

sed -i "s/^version: .*/version: ${NEW_VERSION}/" "$PUBSPEC"

echo "=== Release Summary ==="
echo "Version: ${CURRENT_VERSION} -> ${NEW_VERSION}"
echo "Commits:"
echo "$COMMITS"
echo ""
echo "This will:"
echo "  1. Commit CHANGELOG.md and pubspec.yaml"
echo "  2. Create tag v${NEW_VERSION}"
echo "  3. Publish to pub.dev"
echo ""
read -p "Continue? [y/N] " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Aborted. Reverting changes..."
  git checkout -- "$CHANGELOG" "$PUBSPEC"
  exit 0
fi

git add "$CHANGELOG" "$PUBSPEC"
git commit -m "chore: release v${NEW_VERSION}"
git tag "v${NEW_VERSION}"

echo "Publishing to pub.dev..."
dart pub publish --force

echo ""
echo "=== Release v${NEW_VERSION} complete ==="
echo "Don't forget to push: git push && git push --tags"
