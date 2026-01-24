alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias ~='cd ~'
alias e='exit'

# bat aliases
alias cat='batcat' # batcat is the name of the binary on debian
bman() {
  man "$@" | batcat -l man -p
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
alias ff='fastfetch'

# Yazi - cd to directory on exit
y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}
