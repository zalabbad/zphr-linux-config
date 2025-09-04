alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'

# bat aliases
alias bat='batcat' # batcat is the name of the binary on debian
bman() {
  man "$@" | bat -l man -p
}

# apt aliases
alias q='apt search'
alias i='sudo apt install'
alias u='sudo apt update && sudo apt upgrade -y && brew update && brew upgrade && flatpak update -y'

# Flatpak alisases
alias fp='flatpak'
alias fpq='flatpak search'
alias fpi='flatpak install'

# Tools
alias lg='lazygit'
alias ld='lazydocker'
alias r='ranger'
alias z='zellij'
alias jb='jbang'
