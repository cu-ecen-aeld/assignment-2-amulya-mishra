#!/bin/sh

if [ $# -ne 2 ] 
then
	echo "writer.sh requires 2 parameters, only $# passed."
	exit 1
fi

writefile=$1
writestr=$2

filepath=$(dirname "${writefile}")

mkdir -p "${filepath}"

if [ $? -ne 0 ]
then
	echo "Failed to create file ${writefile}"
	exit 1
fi

echo "${writestr}" > ${writefile}
