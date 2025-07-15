#!/bin/bash
# bands bundle test script

# This script runs tests for the bands tutorial bundle using the mettleci tool.
shopt -s xpg_echo

export BUNDLE_FILE=./bands.json
export bands=("beatles" "stones" "queen")

echo "\nListing available generators"
mettleci fabrication list -path $BUNDLE_FILE

echo "\nRunning band.member"
mettleci fabrication test -path $BUNDLE_FILE -generator band.member

echo "\nRunning band.album"
mettleci fabrication test -path $BUNDLE_FILE -generator band.album

for band in "${bands[@]}"; do
    echo "\nRunning band.member for $band"
    mettleci fabrication test -path $BUNDLE_FILE -generator band.member

    echo "\nRunning band.album for $band"
    mettleci fabrication test -path $BUNDLE_FILE -generator band.album
done
