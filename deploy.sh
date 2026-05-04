#!/bin/bash
set -e
SRC="/Users/chanvit/Documents/Claude/Projects/ขายฝาก"
cd ~/Projects/phutrust-preview
cp "$SRC/landing-prototype.html" index.html
rm -rf blog
cp -r "$SRC/blog" blog
git add -A
git commit -m "${1:-update from local}" || { echo "ไม่มีการเปลี่ยนแปลง"; exit 0; }
git push
echo "✓ Pushed — รอ ~30 วิ แล้วเช็ค https://phutrust.com"
