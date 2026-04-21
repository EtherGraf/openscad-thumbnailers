#!/usr/bin/env sh

BASENAME=$(basename "$2")
SCAD="/tmp/stl2png_$BASENAME.scad"
echo "import(\"$1\");" > "$SCAD"
/usr/bin/openscad  --colorscheme="Cornfield" --imgsize=$3,$3 -o "$2.png" "$SCAD"
rm "$SCAD"
/usr/bin/convert "$2.png" -fuzz 20% -transparent white "png:$2"
rm "$2.png"
