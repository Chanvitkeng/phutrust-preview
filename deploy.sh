#!/bin/bash
set -e
cd ~/Projects/phutrust-preview
git add -A
git diff --staged --quiet && { echo "ไม่มีการเปลี่ยนแปลง"; exit 0; }
git commit -m "${1:-update}"
git push
echo "✓ Pushed — รอ ~30 วิ แล้วเช็ค https://phutrust.com"
