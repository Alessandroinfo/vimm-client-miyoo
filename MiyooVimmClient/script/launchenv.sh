#!/bin/sh

export mydir=$(pwd)
export sysdir=/mnt/SDCARD/.tmp_update
export miyoodir=/mnt/SDCARD/miyoo
export LD_LIBRARY_PATH="$mydir/../lib:/lib:/config/lib:$miyoodir/lib:$sysdir/lib:$sysdir/lib/parasyte"
export PATH="$sysdir/bin:$PATH"
export ZDOTDIR=share/zsh
export TERM=vt102
export TERMINFO=share/terminfo/
# Enable verbose logging for the client by default
export VIMM_CLIENT_LOG=1
cd $mydir/../
bin/zsh $mydir/client.sh
