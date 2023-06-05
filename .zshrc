# If you come from bash you might have to change your $PATH.
export GOPATH=~/Code/Go
export GOPRIVATE=gitlab.com/jobilla
# if [ -f '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc'; fi
#
export PATH=~/Library/Python/2.7/bin:~/.composer/vendor/bin:/usr/local/bin:$(go env GOPATH)/bin:/usr/local/opt/gnu-sed/libexec/gnubin:~/.spark:node_modules/.bin:$PATH
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="$PATH:$HOME/.npm/bin"
export PATH=/Users/leosjoberg/.local/share/ponyup/bin:$PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/leosjoberg/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="spaceship"

export DEFAULT_USER=`whoami`

SPACESHIP_NODE_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECTL_CONTEXT_SHOW=false
SPACESHIP_PACKAGE_SHOW=false

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
# ENABLE_CORRECTION="true"

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
plugins=(git z extract thefuck kubectl dotenv)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/aliases

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH""

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/leosjoberg/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/leosjoberg/google-cloud-sdk/completion.zsh.inc'; fi


export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export HELM_EXPERIMENTAL_OCI=1

autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

# sekey
# export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh
export GPG_TTY=$(tty)
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/leosjoberg/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/leosjoberg/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/leosjoberg/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(direnv hook zsh)"
export CGO_FLAGS="-w"
