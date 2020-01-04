# Misc
function check() {
  if [ $? -ne 0 ]
  then
    echo "Command failed"
    exit
  fi
}

# Git
alias ga="git add"
alias gb="git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'"
alias gbs="git branch"
alias gc="git checkout"
alias gco="git commit"
alias gdiff="git diff --name-status master"
alias gf="git checkout -b"
alias gm="git checkout master"
alias gull="git pull"
alias gush="git push origin"
alias gs="git status"
alias gsu="git push --set-upstream origin $(gb)"

function gd() {
  git branch -d $1
  git push origin --delete $1
}

function gsubmit() {
  branch=$(gb)
  check
  git checkout master
  check
  git merge $branch
  check
  gush
  check
  gd $branch
}

# Repos
export REPOSITORY="$HOME/Repository"

function r() {
  cd "$REPOSITORY/$1"
}

alias rs="ls $REPOSITORY"
