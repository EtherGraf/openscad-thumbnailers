#!/usr/bin/env sh

SCAD=/tmp/stl2png_$(basename $2).scad
echo "import(\"$1\");" > $SCAD
/usr/bin/openscad  --colorscheme="Tomorrow" --imgsize=$3,$3 -o $2.png $SCAD
rm $SCAD
/usr/bin/convert $2.png -fuzz 20% -transparent white png:$2
rm $2.png $2
