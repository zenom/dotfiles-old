#!/bin/bash

# Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull --rebase --prune'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

case $OSTYPE in
  linux*)
    alias gd='git diff | vim -R -'
    ;;
  darwin*)
    alias gd='git diff | mvim -R -'
    ;;
  darwin*)
    alias gd='git diff'
    ;;
esac


# Display the help.
function git-help() {
  echo "Git Custom Aliases Usage"
  echo
  echo "  gcl	  = git clone"
  echo "  g       = git"
  echo "  get 	  = git"
  echo "  ga      = git add"
  echo "  gall	  = git add ."
  echo "  gst/gs  = git status"
  echo "  gss	  = git status -s"
  echo "  gl      = git pull --rebase --prune"
  echo "  gup     = git fetch && git rebase"
  echo "  gp      = git push"
  echo "  gd      = git diff | mvim -R -"
  echo "  gdv     = git diff -w \"$@\" | vim -R -"
  echo "  gc      = git commit -v"
  echo "  gca     = git commit -v -a"
  echo "  gb      = git branch"
  echo "  gba     = git branch -a"
  echo "  gcount  = git shortlog -sn"
  echo "  gcp     = git cherry-pick"
  echo "  gco     = git checkout"
  echo "  glog    = git log"
  echo "  gexport = git git archive --format zip --output"
	echo "  gdel    = git branch -D"
	echo "  gpo     = git push origin"
  echo
}