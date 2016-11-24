# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PAT=H"$HOME/bin:$PATH"
fi

export WINDOWS=$PATH:/mnt/windows/Users/sxf/Documents/tron/2b
export WINDOWSBASH=$PATH:/mnt/windows/Users/sxf/AppData/Local/lxss/home/sxf

export PATH=$PATH:/home/sxf/Documents/work/triton_bootloader

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Documents/go
export PATH=$PATH:$GOPATH/bin
setxkbmap -option terminate:ctrl_alt_bksp

sudo mount -t ntfs /dev/nvme0n1p3 /mnt/windows -o "umask=022"

