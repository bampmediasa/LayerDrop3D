#!/bin/bash
# LayerDrop3D — Push new ultra-techy site to live
# Double-click this file to push your changes to GitHub.

set -e
cd "$(dirname "$0")"

echo "════════════════════════════════════════════"
echo "  LayerDrop3D — Pushing to live site"
echo "════════════════════════════════════════════"
echo ""

# 1. Clear the leftover lock and abort the stuck rebase from a previous session
if [ -f .git/index.lock ]; then
  echo "→ Clearing leftover git lock..."
  rm -f .git/index.lock
fi

if [ -d .git/rebase-merge ] || [ -d .git/rebase-apply ]; then
  echo "→ Aborting stuck rebase from previous session..."
  git rebase --abort 2>/dev/null || true
fi

# 2. Make sure we're on main
echo "→ Switching to main branch..."
git checkout main

# 3. Stage and commit the new site
echo "→ Staging new site files..."
git add index.html products.html website/index.html 2>/dev/null || git add index.html

echo "→ Creating commit..."
git commit -m "Launch ultra-techy site: animated 3D printer hero, fleet w/ P2S + H2S" || echo "  (nothing new to commit)"

# 4. Push to GitHub
echo "→ Pushing to GitHub..."
git push origin main

echo ""
echo "════════════════════════════════════════════"
echo "  Done! Your site will be live in ~1 min at:"
echo "  https://www.layerdrop3d.com"
echo "════════════════════════════════════════════"
echo ""
read -p "Press Enter to close..."
