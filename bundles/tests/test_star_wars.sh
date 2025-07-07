#!/bin/bash
# star_wars bundle test script

# This script runs tests for the star_wars bundle using the mettleci tool.
shopt -s xpg_echo

echo "\nstar_wars.call_sign"
mettleci fabrication test -path . -generator star_wars.call_sign

echo "\nstar_wars.character"
mettleci fabrication test -path . -generator star_wars.character

# Produce three random quotes from randomly selected main characters
# Comma-delimited list of pmain characters
character_list="admiral_ackbar,boba_fett,c_3po,darth_vader,emperor_palpatine,han_solo,jabba_the_hutt,lando_calrissian,leia_organa,luke_skywalker,obi_wan_kenobi,yoda"
# Convert the comma-separated string into an array
IFS=',' read -ra characters <<< "$character_list"
# Get the number of items
count=${#characters[@]}
# Produce three random quotes
for i in {1..3}; do
    # Pick a random index
    index=$(( RANDOM % count ))
    # Get the randomly selected character code
    character_code=${characters[$index]}
    # Convert it to Camel Case
    camel_case_character=$(echo "$character_code" | tr "_" " " | awk '{
        for (i = 1; i <= NF; i++) {
            $i = toupper(substr($i,1,1)) substr($i,2)
        }
        print
        }')
    # Output
    echo "\n[Obi-Wan Kenobi] : Hello there, $camel_case_character!"
    echo "\nstar_wars.quote ($character_code)"
    mettleci fabrication test -path . -generator star_wars.quote -Pcharacter="$character_code"
done

echo "\nstar_wars.droid"
mettleci fabrication test -path . -generator star_wars.droid

echo "\nstar_wars.planet"
mettleci fabrication test -path . -generator star_wars.planet


echo "\nstar_wars.species"
mettleci fabrication test -path . -generator star_wars.species

echo "\nstar_wars.vehicle"
mettleci fabrication test -path . -generator star_wars.vehicle

echo "\nstar_wars.wookiee_word"
mettleci fabrication test -path . -generator star_wars.wookiee_word
