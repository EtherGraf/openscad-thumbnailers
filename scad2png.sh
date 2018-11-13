#!/usr/bin/env sh

/usr/bin/openscad --colorscheme="Tomorrow" --imgsize=$3,$3 -o $2.png $1
/usr/bin/convert $2.png -fuzz 20% -transparent white png:$2
rm $2.png $2
