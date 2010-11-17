#!/bin/bash
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

switch () {
  rvm $1
  local v=$(rvm_version)
  rvm wrapper $1 textmate
  echo "Switch to Ruby version: "$v
}

rvm_default () {
  rvm --default $1
  rvm wrapper $1 textmate
}

function rvm_version () {
  ruby --version
}

# setting this for rvm stuff
ORIG_RUBY=$RUBY_VERSION;
ORIG_GEMSET=$rvm_gemset_name