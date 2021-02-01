set PATH $PATH ~/.bin
set PATH $PATH ~/.local/bin
set PATH $PATH ~/.scripts

set fish_greeting

###########
# Aliases #
###########
alias prog='cd ~/Documents/epita/ing1/prog'

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l.="ls -A | egrep '^\.'"
alias lc="clear;ls"

alias q='exit'
alias c='clear'

alias vim='nvim'
alias vimwiki='nvim -c VimwikiIndex'

alias cf='gcc -Wextra -Wall -Werror -std=c99 -pedantic -fsanitize=address -o main'
alias cpf='g++ -Wextra -Wall -Werror -std=c++17 -pedantic -o main'
alias valgrind-full='valgrind --leak-check=full --show-leak-kinds=all --leak-resolution=high --track-origins=yes --vgdb=yes'

alias bashrc='vim ~/.bashrc'
alias fishrc='vim ~/.config/fish/config.fish'
alias nvimrc='vim ~/.config/nvim/init.vim'
alias i3conf='vim ~/.config/i3/config'
alias polyconf='vim ~/.config/polybar/config'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias pacman='sudo pacman --color auto'

alias psa="ps auxf"

alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"

alias zathura="zathura --fork"

alias gl="git log --all --decorate --oneline --graph --color=always"
alias gs="git status -s"

export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"
