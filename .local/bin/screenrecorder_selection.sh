#!/usr/bin/zsh

notify-send -t 5000 "Screen recorder started."
wf-recorder -g "$(slurp)" -f "$(xdg-user-dir VIDEOS)/$(date +'screenrecording_%Y-%m-%d-%H%M%S.mp4')"
