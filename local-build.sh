#!/bin/bash

plenti theme add https://github.com/plenti-themes/wedding-lite
plenti theme enable wedding-lite
plenti build .
plenti serve -b -B=false
#git restore plenti.json
#rm -rf themes/wedding-lite
