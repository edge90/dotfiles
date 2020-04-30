#!/usr/bin/zsh

#source "${HOME}/.zshrc"

yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S

ret=$?
if [ $ret -ne 0 ]; then
    echo 'Installation failed. Press any key to exit.'
else
    echo 'Installation succeded. Press any key to exit.'
fi

read
exit $ret
