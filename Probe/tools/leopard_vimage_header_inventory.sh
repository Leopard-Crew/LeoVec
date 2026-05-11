#!/bin/sh
set -eu

ACCEL="/System/Library/Frameworks/Accelerate.framework"
VIMAGE="$ACCEL/Frameworks/vImage.framework"
HEADERS="$VIMAGE/Headers"

echo "LeoVec vImage Header Inventory"
echo "=============================="
echo

echo "System:"
sw_vers || true
uname -a || true
echo

echo "Accelerate framework:"
if [ -d "$ACCEL" ]; then
  echo "FOUND: $ACCEL"
else
  echo "MISSING: $ACCEL"
  exit 1
fi
echo

echo "vImage framework:"
if [ -d "$VIMAGE" ]; then
  echo "FOUND: $VIMAGE"
else
  echo "MISSING: $VIMAGE"
  exit 1
fi
echo

echo "vImage headers:"
find -L "$HEADERS" \( -type f -o -type l \) | sort
echo

echo "Relevant declarations:"
grep -R "Premultiply\|Unpremultiply\|ARGB\|RGBA\|BGRA\|Scale" "$HEADERS" 2>/dev/null || true
