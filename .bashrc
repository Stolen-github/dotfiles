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
PS1="[\[\e[33m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\]:\W] $ "


########
# Path #
########
if [ -d "$HOME/.bin" ] ;
then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
then PATH="$HOME/.local/bin:$PATH"
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
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
alias lc="clear;ls"

alias q='exit'
alias c='clear'
alias h='history'
alias python='python3'

alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias i3conf='vim ~/.config/i3/config'
alias polyconf='vim ~/.config/polybar/my-config'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias pacman='sudo pacman --color auto'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"


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
                  *)           echo "'$1' cannot be extracted via ex()" ;;
            esac
      else
            echo "'$1' is not a valid file"
      fi
}

# Move up by N in directory
up () {
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
export EDITOR=vim
export LANG=en_US.utf8
