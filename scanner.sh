#!/bin/bash
#loops through an scanning process to try and recognize a qr code

snapshotCommand=`fswebcam -r 1280x720 --no-banner source.jpg`
convertCommand=`convert source.jpg destination.png`
analyzeCommand=$(sudo python decodepng.py | awk 'NR==1{print $1}')	
#serialCommand=`sudo ./home/chris/arduino-serial -b 9600 -p /dev/ttyACM0 -s $analyzeCommand`

$snapshotCommand
$convertCommand
if [ $analyzeCommand ]
	then
		echo "read code"
		echo $analyzeCommand
		#$serialCommand
		sudo ./arduino-serial "-b" "9600" "-p" "/dev/ttyACM0" "-s" $analyzeCommand

fi
