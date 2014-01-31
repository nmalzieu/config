# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fwalch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/heroku/bin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/ImageMagick/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias toz='ssh noe@toz.via.ecp.fr'
alias fullpep8='autopep8 -a --in-place --ignore=E501 -r ./'
alias bdmv='source /Users/noemalzieu/bdm/venv/bin/activate && cd /Users/noemalzieu/bdm/'
alias vps1='ssh -A noe@198.98.112.132'
alias toztunnel='ssh -D 1080 noe@toz.via.ecp.fr'
alias cdesign='ssh root@cd.via.ecp.fr'
alias cdtunnel='ssh -D 1080 root@cd.via.ecp.fr'
alias proxyon='sudo networksetup -setsocksfirewallproxystate Ethernet on && sudo networksetup -setsocksfirewallproxystate Wi-Fi on'
alias proxyoff='sudo networksetup -setsocksfirewallproxystate Ethernet off && sudo networksetup -setsocksfirewallproxystate Wi-Fi off'
alias updatedb='cd / && sudo /usr/libexec/locate.updatedb'
alias pdflatex='pdflatex -shell-escape'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2'
alias tcw='ssh -p 92 -i ~/.ssh/id_dsa.pub equarlat@thecampuswave.com'
alias bookin='cd ~/Sites/Projets/bookin/bookin'
alias bdm='ssh -i ~/.ssh/id_dsa.pub bdm@dowie.via.ecp.fr'
alias v4='source ~/.venv/work4/bin/activate'
alias w4='v4 && cd ~/work4/'
alias hf='source ~/.venv/hackfest/bin/activate'
alias vwy='source ~/.venv/wyat/bin/activate'
alias gowy='cd ~/Documents/Projets/wyatdir/wyat'
alias wy='vwy && gowy'
alias lab3='ssh -D 1080 -A nmalzieu@lab3.work4labs.com'
alias ortho='ssh produitsq@ftp.ortho-company.com'
alias biscotte='ssh noe@biscotte.via.ecp.fr'
alias rpi='ssh -A pi@raspberrypi.local'
alias rpir='ssh -A pi@citegg.no-ip.biz'

bindkey "^[[5~" history-beginning-search-backward

bindkey "^[[6~" history-beginning-search-forward

# Add local python packages (homebrew?) to pythonpath
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
