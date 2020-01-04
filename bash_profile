
# Misc
function check() {
  if [ $? -ne 0 ]
  then
    echo "Command failed"
    return 1
  fi
}

# Git
alias ga="git add"
alias gb="git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'"
alias gbs="git branch"
alias gc="git checkout"
alias gco="git commit"
alias gdiff="git diff --name-status master"
alias gm="git checkout master"
alias gull="git pull"
alias gush="git push origin"
alias gs="git status"

function gd() {
  git branch -d $1
  git push origin --delete $1
}

function gf() {
  git checkout -b $1
  git push --set-upstream origin $1
}

function gsubmit() {
  branch=$(gb)
  check || return
  git checkout master
  check || return
  git merge $branch
  check || return
  gush
  check || return
  gd $branch
}

# Repos
export REPOSITORY="$HOME/Repository"

function r() {
  cd "$REPOSITORY/$1"
}

alias rs="ls $REPOSITORY"
