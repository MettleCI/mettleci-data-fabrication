#!/bin/bash
# bands bundle test script

# This script runs tests for the bands tutorial bundle using the mettleci tool.
shopt -s xpg_echo

export bundle=./bands.json
export bands=("beatles" "stones" "queen")

echo "\nListing available generators"
mettleci fabrication list -path $bundle -include-params

echo "\nRunning band.member"
mettleci fabrication test -path $bundle -generator band.member

echo "\nRunning band.album"
mettleci fabrication test -path $bundle -generator band.album

for band in "${bands[@]}"; do
    echo "\nRunning band.member for $band"
    mettleci fabrication test -path $bundle -generator band.member

    echo "\nRunning band.album for $band"
    mettleci fabrication test -path $bundle -generator band.album
done
