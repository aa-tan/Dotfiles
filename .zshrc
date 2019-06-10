# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/atan/.oh-my-zsh"

# Ncurses path
export PATH="/usr/local/opt/ncurses/bin:$PATH"

# Yarn path
export PATH="$PATH:/opt/yarn-[version]/bin"

# Golang binaries
export PATH="$PATH:$HOME/Dev/go/bin/"

# Golang exec
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

# Golang path
export GOPATH="$HOME/Dev/go"

# Flutter path
export PATH="$HOME/Dev/flutter/bin:$PATH"

# OpenSSL path
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# Openvpn path
export PATH="/usr/local/sbin:$PATH"

# USER local bin path
export PATH="/Users/atan/.local/bin:$PATH"

# Ruby path
export PATH="/usr/local/lib/ruby/gems/2.5.0/bin:$PATH"

# C/C++ path
#export CPATH="/usr/local/include/"

# Pycurl path
export PYCURL_SSL_LIBRARY=openssl


source /usr/local/etc/profile.d/z.sh

#####

# Variables
export TERM="xterm-256color"
export EDITOR="vim"
export BAT_THEME="Monokai Extended Origin"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/atan/Work/hub-gam-importer/secret/service-account-adpp.json"
export LAYOUT="243a,178x51,0,0[178x38,0,0,3,178x12,0,39{89x12,0,39,4,88x12,90,39,5}]"

# GP Variables
export ENV="DEV"

export FRONT_SERVICE="localhost"
export FRONT_PORT=3000

export BACK_SERVICE="localhost"
export BACK_PORT=5000

export DB_SERVICE="localhost"
export DB_PORT=27017

# Geometry plugins
GEOMETRY_PROMPT_PLUGINS=(exec_time +hostname git)
GEOMETRY_COLOR_PROMPT=yellow
GEOMETRY_COLOR_ROOT=red
GEOMETRY_PROMPT_PREFIX=""
GEOMETRY_PROMPT_SUFFIX=" : "
GEOMETRY_PLUGIN_SEPARATOR=" | "
PROMPT_GEOMETRY_EXEC_TIME=true
#Hub autocompletion
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# Aliases
alias gam="j gam; python test_quota.py;"
alias todo="todo.sh"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias git="hub"
alias c="crystal"
alias pkt_summary="~/labcode/qt4/libs/release/pkt_summary"
alias atan="ssh 159.65.12.129"
alias love="/Applications/love.app/Contents/MacOS/love"
alias rm="rmtrash"
#alias ls="colorls --light"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="geometry/geometry"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  git
  osx
  nyan
  brew
  node
  npm
  python
  zsh-syntax-highlighting
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
eval "$(pyenv init -)"

eval "$(rbenv init -)"

source ~/.zsh/completions/tmuxinator.zsh

#syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load colorls
#source $(dirname $(gem which colorls))/tab_complete.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/atan/Work/talentmind-screening-backend/lambda_functions/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/atan/Work/talentmind-screening-backend/lambda_functions/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/atan/Work/talentmind-screening-backend/lambda_functions/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/atan/Work/talentmind-screening-backend/lambda_functions/node_modules/tabtab/.completions/sls.zsh
