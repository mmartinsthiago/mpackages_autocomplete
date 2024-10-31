#! /bin/bash

function withoutVerbose() {
    if [[ "$2" == "--no-verbose" ]]; then
        echo "$1"
        sleep 1
    fi

    return 0
}

echo "Installing command mpackage ..."

withoutVerbose "Changing permission to executable ..." "$1"
withoutVerbose"sudo chmod +x mpackage" "$1"
sudo chmod +x mpackage
withoutVerbose "Permission changed!" "$1"

withoutVerbose "Moving mpackage to executable commands/bin directory ..." "$1"
withoutVerbose "sudo mv mpackage /usr/local/bin" "$1"
sudo mv mpackage /usr/local/bin
withoutVerbose "Moved mpackage to executable commands/bin directory!" "$1"

withoutVerbose "Moving mpackage_autcomplete to bash_completion.d ..." "$1"
withoutVerbose "sudo mv mpackage_autocomplete /etc/bash_completion.d/mpackage" "$1"
sudo mv mpackage_autocomplete /etc/bash_completion.d/mpackage
withoutVerbose "Moved mpackage_autcomplete to bash_completion.d!" "$1"

echo "Instalation successfully made!"
echo "Commands avalilable:"
echo
echo "sudo mpackage update              |   To update instalations with the pacman"
echo "sudo mpackage install <package>   |   To install package with the pacman"
echo "sudo mpackage remove <package>    |   To remove package with the pacman"
echo
sleep 1
echo "Optional"
echo "You can delete this directory after this instalation, typing:"
echo "cd .. && rm -rf mpackage_autocomplete"

echo "Bye!"
