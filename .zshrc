# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="miloshadzic"
# ZSH_THEME="random"

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

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin/"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
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
# eval `ssh-agent -s`
# ssh-add

alias g='git'
alias s='bundle exec spring'
alias sr='bundle exec spring rspec'
alias trake='RAILS_ENV=test bundle exec rake'
alias b='bundle exec'
alias bs='bundle exec spring'
alias bsr='bundle exec spring rspec'
alias delete_merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias longspec='ruby -e "i = 10; while system(%{rspec}) && i > 0 do i -= 1 end"'
alias cuc='bundle exec cucumber -r features'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GOPATH="$HOME/gopath/"
export PATH=$PATH:$GOPATH/bin

export EDITOR=nvim

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

#vagrant aliases
alias vu="vagrant up --no-provision"
alias vp="vagrant provision"
alias vst="vagrant status"
alias vr="vagrant reload"
alias vd="vagrant destroy"
alias vbl="vagrant box list"
alias vbr="vagrant box remove"
alias vsh="vagrant ssh"

PERL_MB_OPT="--install_base \"/Users/denis/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/denis/perl5"; export PERL_MM_OPT;

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Java Home
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.181.b15-6.fc29.x86_64/jre"
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-11.fc29.x86_64/jre"
export PATH=/opt/apache-maven-3.5.0/bin:$PATH

export PGDATA='/usr/local/var/postgres'

alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"

export JIRA_LOGIN='d.kirichenko'
alias diff_finder="/Users/denis/work/git-branches-diff-finder/diff_finder.pl"

alias gulp=node_modules/gulp/bin/gulp.js
alias bower=node_modules/bower/bin/bower

alias mydocker-kill="docker kill $(docker ps -q)"
alias mydocker-rm="docker rm $(docker ps -a -q)"
alias mydocker-rmi="docker rmi $(docker images -q)"

# check staging tasks
. /usr/share/autojump/autojump.zsh

alias vim="nvim"

export PATH="$HOME/.erln8.d/bin:$PATH"
export PATH="$HOME/packer:$PATH"
export PATH="$HOME/.local/bin:$PATH"

alias devbox="cd ~/work/a2p-devbox && vagrant ssh"
#. ~/.zshrc_plus

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

eval $(thefuck --alias) 

fpath=(~/.zsh/completion $fpath)

if [ ${TMUX} ]; then #https://github.com/tmux/tmux/issues/223
 unset zle_bracketed_paste
fi

# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
export ERL_AFLAGS="-kernel shell_history enabled"
