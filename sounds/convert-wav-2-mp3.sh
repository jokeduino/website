#!/bin/bash




FILES=`find . -name '*.wav'`

for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  BASENAME=$(basename "$f" .wav)
  DIRECTORY=$(dirname "$f")
  echo $BASENAME
  echo $DIRECTORY
  yes | ffmpeg -i $f -b:a 192k  $DIRECTORY/$BASENAME.mp3
done

