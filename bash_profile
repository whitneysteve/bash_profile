# Git
alias gb="git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'"
alias gbs="git branch"
alias gc="git checkout"
alias gdiff="git diff --name-status master"
alias gm="git checkout master"
alias gull="git pull"
alias gush="git push origin"
alias gsu="git push --set-upstream origin $(gb)"

# Repos
export REPOSITORY="$HOME/Repository"

function r() {
  cd "$REPOSITORY/$1"
}

alias rs="ls $REPOSITORY"
