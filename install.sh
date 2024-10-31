#! /bin/bash

function withoutVerbose() {
    if [[ "$2" == "--no-verbose" ]]; then
        echo "$1"
        sleep 1
    fi

    return 0
}

echo "Installing command mpackages ..."

withoutVerbose "Changing permission to executable ..." "$1"
withoutVerbose"sudo chmod +x mpackages" "$1"
sudo chmod +x mpackages
withoutVerbose "Permission changed!" "$1"

withoutVerbose "Moving mpackages to executable commands/bin directory ..." "$1"
withoutVerbose "sudo mv mpackages /usr/local/bin" "$1"
sudo mv mpackages /usr/local/bin
withoutVerbose "Moved mpackages to executable commands/bin directory!" "$1"

withoutVerbose "Moving mpackages_autcomplete to bash_completion.d ..." "$1"
withoutVerbose "sudo mv mpackages_autocomplete /etc/bash_completion.d/mpackages" "$1"
sudo mv mpackages_autocomplete /etc/bash_completion.d/mpackages
withoutVerbose "Moved mpackages_autcomplete to bash_completion.d!" "$1"

echo "Instalation successfully made!"
echo "Commands avalilable:"
echo
echo "sudo mpackages update              |   To update instalations with the pacman"
echo "sudo mpackages install <package>   |   To install package with the pacman"
echo "sudo mpackages remove <package>    |   To remove package with the pacman"
echo
sleep 1
echo "Optional"
echo "You can delete this directory after this instalation, typing:"
echo "cd .. && rm -rf mpackage_autocomplete"

echo "Bye!"
