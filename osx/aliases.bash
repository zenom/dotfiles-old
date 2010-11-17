#!/bin/bash

# Desktop Programs
alias preview="open -a '$PREVIEW'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias chromium="open -a chromium"
alias dashcode="open -a dashcode"
alias f='open -a Finder '
alias c='cd '
alias dev='cd /Volumes/Development'
alias docs='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias github="open -a chromium http://www.github.com"

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

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Lazy aliases
alias l='ls -l'
alias la='ls -Al'
alias ..='cd ..'

# Reload .bashrc
alias refresh='. ~/.bashrc'
alias reload!='. ~/.bashrc'