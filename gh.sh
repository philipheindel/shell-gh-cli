#!/bin/bash

git config --global user.username

function gh_issue() {

}

function gh_pr() {

}

function gh_repo() {

}

function gh_help() {

}

function gh_cli() {
  if [ $1 = "issue" ];
  then
    gh_issue() $2
  elif [ $1 = "pr" ];
  then
    gh_pr() $2
  elif [ $1 = "repo" ];
  then
    gh_repo() $2
  elif [ $1 = "help" ];
  then
    gh_help() $2
  else
    echo "$1" is an invalid argument
  fi
}

alias gh="gh_cli()"

