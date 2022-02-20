# A minimal frontend for icecast
[screenshot](https://postimg.cc/LgLYrCD4)

A minimal frontend for icecast so you don't have to expose the icecast interface on the internet.
It reads the current playing song from `/current.txt` which you can fill using a cronjob.
You can change the logo by placing a logo.png in the web directory.

Uses plain javascript and standard fonts so no external downloads.
It only has a play/pause button and a volume slider. 

# Keyboard shortcuts
- **spacebar**: Toggle play/pause
- **=**: Volume up
- **-**: Volume down

# Files
Move the `web/` files to the directory where your webserver will be looking for the files.

## web/index.html
Replace all the `{title}` `{url}` and `{musicurl}` tags inside this file to the correct ones.

- **title**: Title of your webpage
- **url**: The full URL of your webpage
- **musicurl**: The icecast stream url

## cron.sh
Run this cronjob every minute to fill current.txt in the web directory.
You can change it to whatever music player you are using, my example is for mpd with the mpc command.
Be sure to change the `/your/path/to/current.txt` to the correct web directory that you are hosting this in.

# Reverse proxy
Check Caddyfile as an example of how to only forward the stream file to your icecast.
For more info about caddy see https://caddyserver.com/v2


# TODO

- [ ] Make install script so you dont need to manually change things
- [ ] Less hacky way to get current song
- [X] Drink beer.