#!/bin/sh

# seconds per year: 31556952 (365.2425 * 86400)
# cartridges per year: 32

SPC=986154.75 # seconds per cartridge: 31556952 / 32

EPOCH=$(date +%s)
PREV=$(cat $HOME/harry.dat)
CURR=$(echo $EPOCH/$SPC | bc)

if [ $PREV -ne $CURR ]
then
	echo $CURR > $HOME/harry.dat
	exit 0
else
	exit 1
fi
