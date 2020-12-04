#!/bin/bash

RESOLUTION="1920x1080"
URL="https://source.unsplash.com/featured/${RESOLUTION}/?cyberpunk"
WALLPAPER=~/.images/wallpaper.jpeg

if test -f "$WALLPAPER"; then
    feh --bg-scale "$WALLPAPER"
fi

RES=$(curl -L "$URL" -o "$WALLPAPER")
if [ -z "$RES" ]; then
    feh --bg-scale "$WALLPAPER"
fi
