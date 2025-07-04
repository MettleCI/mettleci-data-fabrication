#!/bin/bash
# stocks bundle test script

# This script runs tests for the stocks bundle using the mettleci tool.
shopt -s xpg_echo

echo "\nstocks.analyst_rating"
mettleci fabrication test -path . -generator stocks.analyst_rating

echo "\nstocks.exchange"
mettleci fabrication test -path . -generator stocks.exchange

echo "\nstocks.ipo_year"
mettleci fabrication test -path . -generator stocks.ipo_year

echo "\nstocks.price"
mettleci fabrication test -path . -generator stocks.price

echo "\nstocks.market_cap"
mettleci fabrication test -path . -generator stocks.market_cap

echo "\nstocks.net_change"
mettleci fabrication test -path . -generator stocks.net_change

echo "\nstocks.pct_change"
mettleci fabrication test -path . -generator stocks.pct_change

echo "\nstocks.symbol (all)"
mettleci fabrication test -path . -generator stocks.symbol

echo "\nstocks.symbol (lse)"
mettleci fabrication test -path . -generator stocks.symbol -Pexchange="lse"

echo "\nstocks.symbol (nsdq)"
mettleci fabrication test -path . -generator stocks.symbol  -Pexchange="nsdq"

echo "\nstocks.symbol (nyse)"
mettleci fabrication test -path . -generator stocks.symbol  -Pexchange="nyse"

echo "\nstocks.name (all)"
mettleci fabrication test -path . -generator stocks.name

echo "\nstocks.name (lse)"
mettleci fabrication test -path . -generator stocks.name  -Pexchange="lse"

echo "\nstocks.name (nsdq)"
mettleci fabrication test -path . -generator stocks.name  -Pexchange="nsdq"

echo "\nstocks.name (nyse)"
mettleci fabrication test -path . -generator stocks.name  -Pexchange="nyse"

echo "\nstocks.volume"
mettleci fabrication test -path . -generator stocks.volume

echo "\nstocks.year_volume"
mettleci fabrication test -path . -generator stocks.year_volume
