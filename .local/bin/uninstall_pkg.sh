#!/usr/bin/zsh

#source "${HOME}/.zshrc"

yay -Qqe | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -R

ret=$?
if [ $ret -ne 0 ]; then
    echo 'Installation failed. Press any key to exit.'
else
    echo 'Installation succeded. Press any key to exit.'
fi

read
exit $ret
