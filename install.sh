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
withoutVerbose "sudo chmod +x mpackages" "$1"
sudo chmod +x mpackages
withoutVerbose "Permission changed!" "$1"

withoutVerbose "Moving mpackages to executable commands/bin directory ..." "$1"
withoutVerbose "sudo cp mpackages /usr/local/bin" "$1"
sudo cp mpackages /usr/local/bin
withoutVerbose "Moved mpackages to executable commands/bin directory!" "$1"

withoutVerbose "Moving mpackages_autcomplete to bash_completion.d ..." "$1"
withoutVerbose "sudo cp mpackages_autocomplete /etc/bash_completion.d/mpackages" "$1"
sudo cp mpackages_autocomplete /etc/bash_completion.d/mpackages
withoutVerbose "Moved mpackages_autcomplete to bash_completion.d!" "$1"

echo "Installation successfully made!"
echo "Commands available:"
echo
echo "sudo mpackages update              |   To update installations with pacman"
echo "sudo mpackages install <package>   |   To install a package with pacman"
echo "sudo mpackages remove <package>    |   To remove a package with pacman"
echo
sleep 1
echo "Optional"
echo "You can delete this directory after this installation by typing:"
echo "cd .. && rm -rf mpackage_autocomplete"

echo "Bye!"
