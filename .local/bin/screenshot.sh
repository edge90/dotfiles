#!/usr/bin/zsh

grim -t png $(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')

notify-send -t 5000 "Screenshot taken."
