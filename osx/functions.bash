#!/bin/bash

function ips {
  ifconfig | grep "inet " | awk '{ print $2 }'
}

function myip {
  res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
  echo "Your public IP is: ${bold_green} $res ${normal}"
}

if [ "`id -u`" -eq 0 ]; then
  alias hosts='vi /etc/hosts'
else
  alias hosts='sudo vi /etc/hosts'
fi



function commands() {
  echo "Some of the commands"
  echo
  echo "  hosts               = edit hosts file with vi"
  echo "  rails-help          = rails help"
  echo "  git-help            = git help"
  echo "  latest-chromium     = download latest chromium"
  echo "  deaths              = kill rails servers"
  echo "  dotmate             = open .dotfiles folder in textmate"
  echo "  dotcd               = cd to the .dotfiles directory"
  echo "  home                = cd to ~/"
  echo "  ssh<tab>            = will show all your hosts"
  echo
}

if [ -z "${PROJECT_PARENT_DIRS[*]}" ]; then
	echo "Define a PROJECT_PARENT_DIRS array in ~/.projects"
fi


# In ~/.projects define a PROJECT_PARENT_DIRS array and source this script. e.g.
# https://github.com/iain/osx_settings/blob/master/.project_aliases.sh
#  PROJECT_PARENT_DIRS[0]="$HOME/src"
#  PROJECT_PARENT_DIRS[1]="$HOME/work"
for PARENT_DIR in ${PROJECT_PARENT_DIRS[@]} ; do
  if [ -d "$PARENT_DIR" ]; then
    for PROJECT_DIR in $(/bin/ls $PARENT_DIR); do
			if [ ! -z `which $PROJECT_DIR` ]; then
        continue # don't set alias if there is something already a command on the path with the same name
      fi
			if [ -d "$PARENT_DIR/$PROJECT_DIR" ]; then
	      alias "$PROJECT_DIR"="cd $PARENT_DIR/$PROJECT_DIR"
			fi
    done
  fi
done