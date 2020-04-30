#!/usr/bin/sh

ls /usr/bin | fzf | xargs -r swaymsg exec --
