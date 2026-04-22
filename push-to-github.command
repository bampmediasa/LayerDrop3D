#!/bin/bash
# LayerDrop3D — Push updates to GitHub
# Double-click this file in Finder to deploy the website

BAMP_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO="$HOME/Documents/Claude/Projects/LayerDrop3D"

echo "========================================"
echo "  LayerDrop3D — Deploying to GitHub"
echo "========================================"
echo ""

if [ ! -d "$REPO/.git" ]; then
    echo "ERROR: Could not find repo at $REPO"
    echo "Please check the path and try again."
    read -p "Press Enter to close..."
    exit 1
fi

cd "$REPO"

echo "Pulling latest from GitHub..."
git pull origin main

echo ""
echo "Copying updated files..."
# Use the full-featured website/index.html as the deployed root page
cp "$BAMP_DIR/website/index.html" "$REPO/index.html"
cp "$BAMP_DIR/products.html" "$REPO/products.html"

# Also sync the website/ subfolder
rsync -a --exclude='.DS_Store' "$BAMP_DIR/website/" "$REPO/website/" 2>/dev/null || \
    cp -R "$BAMP_DIR/website/." "$REPO/website/"

git config user.email "bampmediasa@gmail.com"
git config user.name "BAMP"

git add index.html products.html website/

if git diff --cached --quiet; then
    echo "No new changes to commit."
else
    git commit -m "Update: real 3D printer photos, RC plane images, SVG icons, no emoji"
    echo "Committed!"
fi

echo ""
echo "Pushing to GitHub..."
git push origin main

echo ""
echo "========================================"
echo "  Done! Site live at: https://layerdrop3d.com"
echo "========================================"
echo ""
read -p "Press Enter to close..."
