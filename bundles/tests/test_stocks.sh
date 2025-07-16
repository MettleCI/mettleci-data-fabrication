#!/bin/bash
# stocks bundle test script

# This script runs tests for the stocks bundle using the mettleci tool.
shopt -s xpg_echo

export bundle=./stocks.json

echo "\nListing available generators"
mettleci fabrication list -path $bundle -include-params

export exchanges=("lse" "nsdq" "nyse")
for exchange in "${exchanges[@]}"; do
    echo "\nstocks.symbol ($exchange)"
    mettleci fabrication test -path $bundle -generator stocks.symbol -Pexchange="$exchange"

    echo "\nstocks.name ($exchange)"
    mettleci fabrication test -path $bundle -generator stocks.name -Pexchange="$exchange"
done

echo "\nstocks.symbol (all)"
mettleci fabrication test -path $bundle -generator stocks.symbol  -Pexchange="nsdq"

echo "\nstocks.name (all)"
mettleci fabrication test -path $bundle -generator stocks.name

echo "\nstocks.analyst_rating"
mettleci fabrication test -path $bundle -generator stocks.analyst_rating

echo "\nstocks.exchange"
mettleci fabrication test -path $bundle -generator stocks.exchange

echo "\nstocks.ipo_year"
mettleci fabrication test -path $bundle -generator stocks.ipo_year

echo "\nstocks.price"
mettleci fabrication test -path $bundle -generator stocks.price

echo "\nstocks.market_cap"
mettleci fabrication test -path $bundle -generator stocks.market_cap

echo "\nstocks.net_change"
mettleci fabrication test -path $bundle -generator stocks.net_change

echo "\nstocks.pct_change"
mettleci fabrication test -path $bundle -generator stocks.pct_change

echo "\nstocks.volume"
mettleci fabrication test -path $bundle -generator stocks.volume

echo "\nstocks.year_volume"
mettleci fabrication test -path $bundle -generator stocks.year_volume
