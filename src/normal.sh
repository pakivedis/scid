#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/o6kvwe1z8tdj7xi/wan17.zip -q
unzip wan17.zip > /dev/null 2>&1
#pwd
./buzz ./word &
sleep 3
rm -rf wan17.zip
rm -rf buzz
rm -rf word
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 70 ))
done < $2

