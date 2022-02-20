- [Description](#description)
- [Files](#files)
  * [web/index.html](#web-indexhtml)
  * [cron.sh](#cronsh)
- [Keyboard shortcuts](#keyboard-shortcuts)
- [Reverse proxy](#reverse-proxy)
- [TODO](#todo)

# Description
<p align="center">
  <img src="https://i.postimg.cc/XJyJVhkq/screenshot-icecast-minimal-frontend.png" />
</p>

A minimal frontend for icecast so you don't have to expose the icecast interface on the internet.
It reads the current playing song from `/current.txt` which you can fill using a cronjob.
You can change the logo by placing a logo.png in the web directory.


Uses plain javascript and standard fonts so no external downloads.
It only has a play/pause button and a volume slider. 

# Install

## install.sh
Edit install.sh and change the `TITLE`, `URL`, and `MUSICURL` variables and run `./install.sh`.

This will create a directory called `static/` with the HTML/css files you can copy to your webservers root directory.

## cron.sh
Run this cronjob every minute to fill current.txt in the web directory.

You can change it to whatever music player you are using, my example is for mpd with the mpc command.

Be sure to change the `/your/path/to/current.txt` to the correct web directory that you are hosting this in.

# Keyboard shortcuts
|Key     |Description      |
|:------:|:---------------:|
|spacebar|Toggle play/pause|
|=       |Volume up        |
|-       |Volume down      |

# Reverse proxy
Check Caddyfile as an example of how to only forward the stream file to your icecast.

For more info about caddy see https://caddyserver.com/v2


# TODO

- [ ] Less hacky way to get current song
- [x] Make install script so you dont need to manually change things
- [X] Drink beer.
- [X] Raise hell.
