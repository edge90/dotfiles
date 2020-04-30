
########################################
# Options
########################################
setopt autocd
setopt correct
bindkey -v

########################################
# autocompletion
########################################
autoload -U compinit && compinit
zmodload -i zsh/complist

########################################
# history
########################################
SAVEHIST=10000
HISTFILE=~/.zsh_history

########################################
# Environment
########################################
export EDITOR=nvim
export PAGER=less

# Isn't really needed as it's set in .pam_environment too
export PATH=$HOME/.local/bin:$PATH

########################################
# Alias
########################################
alias sudo='sudo '
alias vi=$EDITOR
alias vim=$EDITOR
alias vimdiff='vim -d'
alias ls='ls --color'
alias l='ls -lahF --color'
#git config --global --add alias.root '!pwd'
alias cdr='cd $(git root)' # todo check if git/hg/svn etc
alias upm='sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist'

########################################
# Functions
########################################
e() {
    if [ "$#" -eq 0 ]; then
        fd --hidden --type f | fzf --preview "less {}" | xargs -r $EDITOR
    else
        command $EDITOR "$@"
    fi
}

g() {
    if [ "$#" -eq 0 ]; then
        command git status
    else
        command git "$@"
    fi
}

..() {
    if [ "$#" -eq 0 ]; then
        builtin cd ..
    else
        repeat "$@" { builtin cd .. }
    fi
}

list-parent-dirs() {
    if [ "$#" -eq 0 ]; then
        local parent_dir=".."
    else
        local parent_dir="$1"
    fi

    # dirname $PWD would also work
    dir="$(realpath $parent_dir)"
    echo $dir

    if [ "$dir" = "/" ]; then
        return 0
    fi

    list-parent-dirs "$dir/.."
}

s() {
    command -v $1 2>&1 > /dev/null
    if [ "$?" -gt 0 ]; then
        return 1;
    fi

    if [ "$#" -eq 1 ]; then
        swaymsg exec "$1"
    elif [ "$#" -eq 2 ]; then
        if [ -f $2 ]; then
            swaymsg exec "$1" "$(realpath $2)"
        else
            swaymsg exec "$1" "$2"
        fi
    fi
}

########################################
# fzf
########################################
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

fzf-cd-parent-widget() {
    local dir=$(list-parent-dirs | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS" fzf)
    cd $dir
    zle fzf-redraw-prompt
}

# Esc+t / ctrl + t
bindkey '\et' fzf-file-widget
bindkey '^t' fzf-file-widget

# Esc+b / ctrl + s
zle     -N    fzf-cd-parent-widget
bindkey '\es' fzf-cd-parent-widget
#bindkey '^s' fzf-cd-parent-widget # Doesn't work

# Esc+d / ctrl + d
bindkey '\ed' fzf-cd-widget
#bindkey '^d' fzf-cd-widget # Doesn't work

# Esc+h / ctrl+r
bindkey '\er' fzf-history-widget
bindkey '^r' fzf-history-widget

# Esc+e / ctrl+e
zle -N e
bindkey '^e' e
bindkey '\ee' e

########################################
# vi mode
########################################

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line
bindkey '^v' edit-command-line

########################################
# Layout with scm support
########################################
autoload -U colors
colors

# Allow for functions in the prompt.

# BRoot
source /home/niclas/.config/broot/launcher/bash/br
