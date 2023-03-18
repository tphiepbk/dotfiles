alias ll="ls -lah"
alias cls="clear"

alias desktop="cd ~/Desktop"
alias download="cd ~/Downloads"
alias nvimsetting="cd ~/.config/nvim"

alias zshconf="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias aliasconf="nvim $ZSH_CUSTOM/aliases.zsh"
alias nvimconf="nvim ~/.config/nvim/init.vim"

alias nv="nvim-gtk"

alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias install="sudo apt-get install"
alias autoremove="sudo apt-get autoremove"
alias autoclean="sudo apt-get autoclean"

alias gconfname="git config user.name"
alias gconfemail="git config user.email"
alias gstatus="git status"
alias gpush="git push"
alias gadd="git add"
alias gcommit="git commit"
alias gbranch="git branch"
alias gmerge="git merge"
alias gdiff="git diff"
alias grestore="git restore"
alias gcheckout="git checkout"
alias greset="git reset"
alias gfetch="git fetch"
alias gpull="git pull"
alias glogp="git log --pretty=format:\"%h %ad%x09%an%x09%s\" --date=short"

alias startdocker="sudo service docker start"
alias dps="docker ps -a"
alias dimage="docker images"
alias dstart="docker start"
alias dstop="docker stop"
alias drun="docker run"
alias dexec="docker exec"
alias dexecit="docker exec -it"
alias drm="docker rm"
alias drmi="docker rmi"

alias startmysql="sudo service mysql start"
alias stopmysql="sudo service mysql stop"
alias mysqluser="mysql -u tphiepbk -p"

alias weather="curl wttr.in/hochiminh"

alias dekvpn="sudo openvpn --config /root/intern02.ovpn"

alias kctl="kubectl"

alias disabletouchpad="xinput set-prop 15 \"Device Enabled\" 0"
alias enabletouchpad="xinput set-prop 15 \"Device Enabled\" 1"

