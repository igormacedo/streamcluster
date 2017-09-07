#!/bin/bash

echo "You can use the same options as Parsec for input:"
echo "test, simdev, simsamll, simmedium, simlarge or native"
echo "example: ./run.sh test"

OPTION=$1
TARGET=streamcluster.out

if [ "$OPTION" = "test" ]; then
    time bin/$TARGET 2 5 1 10 10 5 none bin/output.txt 1
elif [ "$OPTION" = "simdev" ]; then
    time bin/streamcluster.out 3 10 3 16 16 10 none bin/output.txt 1
elif [ "$OPTION" = "simsmall" ]; then
    time bin/streamcluster.out 10 20 32 4096 4096 1000 none bin/output.txt 1
elif [ "$OPTION" = "simmedium" ]; then
    time bin/streamcluster.out 10 20 64 8192 8192 1000 none bin/output.txt 1
elif [ "$OPTION" = "simlarge" ]; then
    time bin/streamcluster.out 10 20 128 16384 16384 1000 none bin/output.txt 1
elif [ "$OPTION" = "native" ]; then
    time bin/streamcluster.out 10 20 128 1000000 200000 5000 none bin/output.txt 1
else
    echo "You didn't type a valid option"
fi
