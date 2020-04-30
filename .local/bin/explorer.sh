#!/usr/bin/zsh

source "${HOME}/.zshrc"
output=$(broot)
#echo $output >> /tmp/test.log
swaymsg exec alacritty -- -e $output
