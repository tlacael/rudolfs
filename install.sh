#!/bin/bash

#install requirement
brew install rust

# install to /usr/local/bin
DIR=$(PWD)
chmod +x start_lfs_server.sh
ln -s ${PWD}/start_lfs_server.sh /usr/local/bin/start_lfs_server
