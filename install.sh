#! /bin/bash

function withoutVerbose() {
    if [[ "$2" == "--no-verbose" ]]; then
        echo "$1"
        sleep 1
    fi

    return 0
}

echo "Installing command mpackage ..."

withVerbose "Changing permission to executable ..." "$1"
withVerbose"sudo chmod +x mpackage" "$1"
sudo chmod +x mpackage
withVerbose "Permission changed!" "$1"

withVerbose "Moving mpackage to executable commands/bin directory ..." "$1"
withVerbose "sudo mv mpackage /usr/local/bin" "$1"
sudo mv mpackage /usr/local/bin
withVerbose "Moved mpackage to executable commands/bin directory!" "$1"

withVerbose "Moving mpackage_autcomplete to bash_completion.d ..." "$1"
withVerbose "sudo mv mpackage_autocomplete /etc/bash_completion.d/mpackage" "$1"
sudo mv mpackage_autocomplete /etc/bash_completion.d/mpackage
withVerbose "Moved mpackage_autcomplete to bash_completion.d!" "$1"

echo "Instalation successfully made!"
echo "Bye!"
sleep 1