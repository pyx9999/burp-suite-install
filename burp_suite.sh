#!/bin/bash

#run after downloading burpsuite

echo $(whoami) "...did you download burpsuite shell script from their website???"

function confirm() {
    while true; do
        read -p "Do you want to proceed? (YES/NO/CANCEL) " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            [Cc]* ) exit;;
            * ) echo "Please answer YES, NO, or CANCEL.";;
        esac
    done
}
 
# Example usage of the confirm function
if confirm; then
    echo "User chose YES. Executing the operation..."
    cd
    cd Downloads
    chmod +x ./burpsuite_community_linux_*.sh
    ./burpsuite_community_linux_*.sh
    exit

else
    echo "User chose NO. Aborting the operation..."
    echo "please download burp suite"
    exit
fi

exit
