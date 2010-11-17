#!/bin/bash
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Display the ruby version.
function rvm_version () {
  ruby --version
}

# setting this for rvm after_cd hook
ORIG_RUBY=$(basename $GEM_HOME)