#!/bin/bash
TITLE="My Awesome Music"
URL="https://my.awesomemusic.example"
MUSICURL="https://my.awesomemusic.example/stream.ogg"

mkdir -p static
cp web/* static/
sed -i "s|{title}|$TITLE|g" static/index.html
sed -i "s|{url}|$URL|g" static/index.html
sed -i "s|{musicurl}|$MUSICURL|g" static/index.html

echo "Copy the files from the static/ folder to your webserver's root"
