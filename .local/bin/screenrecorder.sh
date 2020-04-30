#!/usr/bin/zsh

wf-recorder -f "$(xdg-user-dir VIDEOS)/$(date +'screenrecording_%Y-%m-%d-%H%M%S.mp4')"

notify-send -t 5000 "Screen recorder started."
