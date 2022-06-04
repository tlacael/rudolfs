#!/bin/bash

#install requirement
brew install rust

# install to /usr/local/bin
cp start_lfs_server.sh /usr/local/bin/start_lfs_server
chmod +x /usr/local/bin/start_lfs_server