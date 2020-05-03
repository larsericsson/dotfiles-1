
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git ripgrep)

source $ZSH/oh-my-zsh.sh

################################################################################

setopt interactivecomments

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"

export LANG=en_US.UTF-8

# preferred editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# aliases
alias ctags="`brew --prefix`/bin/ctags"
alias n="nvim"
alias "n."="nvim ."
alias gs="git s"
alias gds="gd --staged"

# initialize nvm, if installed
export NVM_DIR="/Users/`whoami`/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# initialize pyenv, if installed
if [[ "$(command -v pyenv)" ]]; then
	eval "$(pyenv init -)"
fi

# global grep options
export GREP_OPTIONS='-iI --color --exclude-dir=.git'

# configure fuzzy finder to use ripgrep
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# show current Kubernetes context on right-hand side of shell, if kubectl is installed
if [[ -x "$(command -v kubectl)" ]]; then
	# get current Kubernetes context
	function print_kube_context() {
		echo ${$(kubectl config current-context 2> /dev/null):-"(unknown)"}
	}

	RPROMPT='%{%B%F{blue}%}☸️  $(print_kube_context)%{%f%k%b%K{black}%B%F{green}%}'
fi

