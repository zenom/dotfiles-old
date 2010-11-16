#!/bin/bash

function ips {
  ifconfig | grep "inet " | awk '{ print $2 }'
}

function myip {
  res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
  echo "Your public IP is: ${bold_green} $res ${normal}"
}