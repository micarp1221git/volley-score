#!/bin/sh
# Web版（リポ直下）→ native/www へコピー。本体を直したら native/ で ./copy-www.sh && npx cap sync ios
cd "$(dirname "$0")"
mkdir -p www/fonts
for f in index.html manifest.json icon-192.png icon-512.png; do cp "../$f" www/; done
cp ../fonts/* www/fonts/
echo "copied to www/"
