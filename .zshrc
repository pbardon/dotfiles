# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh	

export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey -e


ZSH_THEME="bellshell"

alias ls='ls --color=auto'

#eval `dircolors /home/bardon/.solarized/dircolors`
eval `dircolors ~/.solarized/dircolors.ansi-dark`
#autoload -U colors && colors

# User Defined Aliases
export P4CONFIG=.p4config
export P4PORT=perforce.f5net.com:1666
export P4USER=bardon
#64 Bit Java
#export JAVA_HOME=/home/bardon/sandbox/bardon-dependencies/devfs_x87_64/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75.x86_64
#32 Bit Java
export JAVA_HOME=/home/bardon/sandbox/bardon-bigip-dev/devfs/usr/lib/jvm/java-1.7.0-openjdk



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/home/bardon/sandbox/bardon-bigip-dev/devfs_x86_64/usr/bin:$PATH"
#export PATH="/home/bardon/sandbox/bardon-bigiq-dev/devfs_x86_64/usr/bin:$PATH"

export NVM_DIR="/home/bardon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use default # This ensures nvm sets up the right nodejs version on start

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

alias clientPaths='p4 client -o | grep -v "\-//" | grep -o "//\S*\.\.\. "'

showDiskUsage() {
	du -h --max-depth=1 | sort -hr
}
