# Misc
alias reload!='. ~/.zshrc'
alias grep='grep --color=always'
alias more='more -R'
alias ff='find . -name '

function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps -ax | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }

# Tmux related aliases
alias tm='tmux'
alias tmlist='tm list-sessions'
alias tmattach='tm attach-session -t '

# Extract any file
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}