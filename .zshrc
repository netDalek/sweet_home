# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# Java Home
# export JAVA_HOME="/usr/java/jdk1.8.0_241-amd64/jre"
# export JAVA_HOME="/usr/java/jdk-14"
# export JAVA_HOME="/usr/java/jdk-12.0.2/"

. ~/.asdf/plugins/java/set-java-home.sh
asdf reshim python

export PATH=/opt/apache-maven-3.6.3/bin:$PATH

export PGDATA='/usr/local/var/postgres'

export JIRA_LOGIN='d.kirichenko'
alias diff_finder="/Users/denis/work/git-branches-diff-finder/diff_finder.pl"

alias gulp=node_modules/gulp/bin/gulp.js
alias bower=node_modules/bower/bin/bower

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

export ERL_AFLAGS="-kernel shell_history enabled"
