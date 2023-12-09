#!/bin/sh

if [ $# -ne 2 ] 
then
	echo "finder.sh requires 2 parameters, only $# passed."
	exit 1
fi

if [ ! -d $1 ] 
then
	echo "Path $1 does not exists or is not a directory"
	exit 1
fi

filesdir=$1
searchstr=$2

filecount=$(ls -Rl ${filesdir} | grep "^-" | wc -l)
searchcount=$(grep -r "${searchstr}" ${filesdir} | wc -l)

echo "The number of files are ${filecount} and the number of matching lines are ${searchcount}"
