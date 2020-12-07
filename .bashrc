# ~/.bashrc
# _               _
#| |__   __ _ ___| |__  _ __ ___
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__
#|_.__/ \__,_|___/_| |_|_|  \___|


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


##########
# Prompt #
##########
export PS1="\[\e[35m\]\w\[\e[m\] \[\e[31m\]»\[\e[m\] "


########
# Path #
########
if [ -d "$HOME/.bin" ]; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi


##############
# Navigating #
##############
bind "set completion-ignore-case on"

shopt -s autocd # Change to named directory
shopt -s cdspell # Autocorrects cd misspellings


###########
# History #
###########
export HISTCONTROL=ignoreboth:erasedups

shopt -s cmdhist # Save multi-line commands in history as single line
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # Expand aliases


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

alias gf='gcc -Wextra -Wall -Werror -std=c99 -pedantic -fsanitize=address -o main'
alias valgrind-full='valgrind --leak-check=full --show-leak-kinds=all --leak-resolution=high --track-origins=yes --vgdb=yes'

alias bashrc='vim ~/.bashrc'
alias nvimrc='vim ~/.config/nvim/init.vim'
alias i3conf='vim ~/.config/i3/config'
alias polyconf='vim ~/.config/polybar/config'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias pacman='sudo pacman --color auto'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

alias psa="ps auxf"

alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"

alias zathura="zathura --fork"


#############
# Functions #
#############
extract ()
{
      if [ -f $1 ] ; then
            case $1 in
                  *.tar.bz2)   tar xjf $1   ;;
                  *.tar.gz)    tar xzf $1   ;;
                  *.bz2)       bunzip2 $1   ;;
                  *.rar)       unrar x $1   ;;
                  *.gz)        gunzip $1    ;;
                  *.tar)       tar xf $1    ;;
                  *.tbz2)      tar xjf $1   ;;
                  *.tgz)       tar xzf $1   ;;
                  *.zip)       unzip $1     ;;
                  *.Z)         uncompress $1;;
                  *.7z)        7z x $1      ;;
                  *.deb)       ar x $1      ;;
                  *.tar.xz)    tar xf $1    ;;
                  *.tar.zst)   unzstd $1    ;;
                  *)           echo "'$1' cannot be extracted via extract()" ;;
            esac
      else
            echo "'$1' is not a valid file"
      fi
}

# Move up by N in directory
up ()
{
      COUNTER=$1
      while [[ $COUNTER -gt 0 ]]
      do
            UP="${UP}../"
            COUNTER=$(( $COUNTER -1 ))
      done
      echo "cd $UP"
      cd $UP
      UP=''
}


###########
# Default #
###########
export EDITOR=nvim
export LANG=en_US.utf8
