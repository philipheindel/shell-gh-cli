#!/bin/bash

function gh_cli() {
  if [[ $1 == "issue" ]]
  then
  
  elif [[ $1 == "pr" ]]
  then
  
  elif [[ $1 == "repo" ]]
  then
  
  elif [[ $1 == "help" ]]
  then
   
  else
    echo "$1" is an invalid argument
  fi
}

alias gh="gh_cli()"

