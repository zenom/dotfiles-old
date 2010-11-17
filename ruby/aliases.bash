#!/bin/bash
alias r='rvm use ree-1.8.7-head'

alias rc='rails console'
alias rs='rails server -p `available_rails_port`'
alias rg='rails generate'
alias rd='rails destroy'
alias ts='rails server thin'
alias spec='rspec spec'
alias migrate='rake db:migrate'
alias devlog='tail -f log/development.log'
alias taild='tail -f log/development.log' # tail dev log

alias s="ps aux | grep \"[r]uby\" | grep script/rails || echo \"You're not running any, dawg.\""


function rails-help() {
  echo "Rails Aliases Usage"
  echo
  echo "  r           = rvm use ree-1.8.7-head"
  echo "  rg          = rails generate"
  echo "  rs          = rails server"
  echo "  ts          = thin server"
  echo "  rc          = rails console"
  echo "  rd          = rails destroy"
  echo "  migrate     = run migration"
  echo "  spec		  = rspec spec"
  echo "  devlog      = tail -f log/development.log"
  echo "  taild       = tail -f log/development.log"
  echo
}