#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#run "megasync"
run "xscreensaver -no-splash"
#run "/usr/bin/dropbox"
#run "insync start"
run "picom -b --config $HOME/.config/picom/picom.conf"
run "nm-applet"
run "mullvad-vpn"
run "emacs --daemon"
run "~/.fehbg"
run "conky -c /home/karl/.config/conky/main"
run "steam -silent -no-browser" 
run "lxsession"
