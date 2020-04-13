#!/bin/bash

username=$(git config --global --get user.github)

gh_issue() {
  if [ "$1" = "create" ]
  then
  
  elif [ "$1" = "list" ]
  then
  
  elif [ "$1" = "status" ]
  then
  
  elif [ "$1" = "view" ]
  then
  
  else
  
  fi
  echo issue
}

gh_pr() {
  if [ "$1" = "checkout" ]
  then
  
  elif [ "$1" = "create" ]
  then
  
  elif [ "$1" = "list" ]
  then
  
  elif [ "$1" = "status" ]
  then
  
  elif [ "$1" = "view" ]
  then
  
  else
  
  fi
  echo pr
}

gh_repo() {
  if [ "$1" = "clone" ]
  then
    url="https://github.com/${username}/${2}.git"
    git clone $url
  elif [ "$1" = "create" ]
  then
  
  elif [ "$1" = "fork" ]
  then
  
  elif [ "$1" = "view" ]
  then
  
  else
  
  fi
  echo repo
}

gh_help() {
  echo help
}

gh_cli() {
  if [ "$1" = "issue" ]
  then
    gh_issue ${@:2}
  elif [ "$1" = "pr" ]
  then
    gh_pr ${@:2}
  elif [ "$1" = "repo" ]
  then
    gh_repo ${@:2}
  elif [ "$1" = "help" ]
  then
    gh_help ${@:2}
  else
    echo "$1" is an invalid argument
  fi
}

# alias gh="gh_cli"

gh_cli $1
