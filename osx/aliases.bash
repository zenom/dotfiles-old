#!/bin/bash

# Desktop Programs
alias preview="open -a '$PREVIEW'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias chromium="open -a chromium"
alias dashcode="open -a dashcode"
alias f='open -a Finder '

if [ -s /usr/bin/firefox ] ; then
  unalias firefox
fi

# edit or cd into dotfiles dir.
alias dotmate='mate $BASH'
alias dotcd='cd $BASH'
alias home='cd ~/'

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

