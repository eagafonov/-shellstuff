alias hs='history | grep'
alias hf='history | fzf -q'
alias ff='find . -type f -name'
alias fd='find . -type d -name'
alias fp='find . -path'
alias list-cows='for cow in $(find /usr/share/cowsay/cows -exec basename {} \;); do cowsay -f $cow $cow; done'
alias aled='${EDITOR:-nano} ~/.bash_aliases'

