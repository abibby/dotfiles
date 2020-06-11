# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/adam/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    npm
    golang
    web-search
    ubuntu
    archlinux
    zsh-syntax-highlighting
    docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

truncate() {
    awk "length > $1{\$0 = substr(\$0, 1, $1-1) \"…\"} {print \$0}"
}

git_prompt_info () {
    local ref
    if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]
    then
        ref=$(command git symbolic-ref HEAD 2> /dev/null)  || ref=$(command git rev-parse --short HEAD 2> /dev/null)  || return 0
        ref=$(echo "$ref" | truncate 40)
        echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
}

PROMPT="$PRE_PROMPT$PROMPT"

# if [ "$(tty)" = "/dev/tty1" ]; then
#     startx
#     exit 0
# fi

# export EDITOR='emacsclient -nw'
export EDITOR='code -w --user-data-dir "/home/adam/.config/Code - OSS"'

# go stuff
export PATH=$PATH:~/go/bin
alias gom="env GO111MODULE=on go"
alias grun="go run *.go"
source <(govm complete)

# node stuff
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# PHP stuff
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
alias as80="sudo php artisan serve --port=80"

# pythony
export PATH="$HOME/.local/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

mkdir -p $HOME/.config/adam/touch
toucher() {
    $@
    touch "$HOME/.config/adam/touch/$1"
}
sudo-toucher() {
    sudo $@
    touch "$HOME/.config/adam/touch/$1"
}

# other stuff
# alias pamac="toucher pamac"
alias p="sudo pacman"
# alias p="sudo-toucher pacman"
alias calc="qalc"
alias sql="sqlectron-term"
alias ls='ls --color -h --group-directories-first'
alias mkd='mkdir -p'
alias dump='hexdump -C'
alias text='surf https://messages.android.com/'
alias e="$EDITOR"
alias se="sudo $EDITOR"
alias ungzip="tar -xvzf"
alias dnd="go-dnd"
alias copy="xclip -in -selection clipboard"
alias paste="xclip -out -selection clipboard"
alias mountFrank="sudo mount -o hard,nolock 192.168.0.17:/mnt/volume1/Public /mnt/frank"
alias umountFrank="sudo umount /mnt/frank"

# memes
export SEAL="What the fuck did you just fucking say about me, you little bitch? I'll have you know I graduated top of my class in the Navy Seals, and I've been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I'm the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You're fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that's just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little "clever" comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn't, you didn't, and now you're paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You're fucking dead, kiddo."
alias seal='echo $SEAL'

export PATH="$HOME/bin:$PATH"

alias goz="cd ~/go/src/github.com/zwzn"

# work stuff
alias work="cd ~/work/aqmdata2"
alias gow="cd ~/go/src/gitlab.com/automac"
alias wtime="sudo timedatectl set-timezone America/Phoenix"
alias htime="sudo timedatectl set-timezone America/Toronto"
alias 2flux='influx -username "admin" -password "$(pass influx.aqmdata2.ca)" -precision "rfc3339" -database "aqmdata" -host "aqmdata2.ca"'
alias pa='php artisan'
alias pmp='composer install && pa migrate && npm install'
alias cb='git pull && pmp && npm run watch'
alias phpunit="$HOME/Documents/work/web-dashboard/vendor/bin/phpunit"
alias phpunit-watch="find . -type f -not -path \"./vendor/*\" -not -path \"./bootstrap/*\" -name \"*.php\" | entr $HOME/Documents/work/web-dashboard/vendor/bin/phpunit"
alias aws="docker run --rm -it amazon/aws-cli"
# alias aws-zsh="aws-vault exec dev --duration=1h -- zsh"

aws-zsh() {
    PRE_PROMPT='aws ' aws-vault exec dev --duration=1h -- zsh -i
}

function query-log() {
    tail -f /var/log/mysql/mysql.log -n 0 | grep --color=never -Po '(?<=^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d.\d{6}Z.{6} Execute\s).*'
}
function  schedule-run () {
    while true; do
        pa schedule:run &
        sleep 60
    done
}

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cfg='config'
function cfgadd() {
    # remove all files from git
    config rm -r --cached -f $HOME
    
    # add all the files using the .dotfiles.list file
    IFS=$'\n'       # make newlines the only separator
    for i in $(cat < "$HOME/.config/adam/dotfiles.list"); do
        config add "$i"
    done
}

function cfgpush() {
    config commit -m "dotfile updates on $(date)"
    config push 
}

#server stuff
alias zstatus="ssh frank-wan 'zpool status'"
alias zlist="ssh frank-wan 'zpool list'"

function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xvf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# source /usr/share/nvm/init-nvm.sh

unset npm_config_prefix

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
