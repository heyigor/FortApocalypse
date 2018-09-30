#!/bin/bash

#
# From the images, create an animated gif
#
echo "Extracting images..."
rm -rdf temp
unzip -qq fort_images.zip -d temp
rm -f FortApocalypse.gif
rm -f FortApocalypseLarge.gif
echo "Generating gifs..."
ffmpeg -loglevel quiet -f image2 -framerate 3 -i temp/fort_images/fort_%002d.png FortApocalypse.gif
ffmpeg -loglevel quiet -f image2 -framerate 3 -i temp/fort_images/fort_%002d.png -vf scale=768x480 FortApocalypseLarge.gif
rm -rdf temp
echo "Done"

