#!/bin/bash

#run after downloading burpsuite

cd ~
find Downloads -name "*.sh" -exec chmod +x {} \;
cd Downloads
./burpsuite_community_linux_*.sh

