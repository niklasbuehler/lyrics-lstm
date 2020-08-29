#!/bin/sh
mkdir -p data
echo "Downloading lyrics from Genius please wait..."
python downloadlyrics.py $1 > data/input.txt
sed -i '/^None$/d' data/input.txt
sed -i '0,/^Done. Found/d' data/input.txt
python lstm.py train
