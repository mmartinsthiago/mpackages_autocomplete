# mpackages_autocomplete

The **mpackages_autocomplete** provides a simplified command for managing packages on Manjaro using the `mpackage` command, along with support for autocompletion with the **Tab** key.

## Requirements

- Manjaro Linux with support for Pacman packages.
- Superuser permissions for installation.

## Installation

Follow the steps below to install `mpackage`:

1. Clone the repository:
   ```
   git clone https://github.com/mmartinsthiago/mpackages_autocomplete.git
   ```
2. Navigate to the cloned repository:
    ```
    cd path/to/mpackages_autocomplete
    ```
3. Run the instalation script:
    ```
    sudo chmod +x install.sh && sudo ./install.sh
    ```

## How to use
After installation, you can use the mpackage command with superuser privileges to simplify package management. The command follows this structure:
```
sudo mpackage <option> <package>
```
### Available options
1. **"update"**: Updates all packages installed with Pacman.
    ```
    sudo mpackage update
    ```
2. **"install"**: Installs a specific package listed in Pacman.
    ```
    sudo mpackage install <package_name>
    ```
    - **Example:** To install **"Inkscape"**:
        ```
        sudo mpackage install inkscape
        ```
3. **"remove"**: Removes a package installed with Pacman.
    ```
    sudo mpackage remove <package_name>
    ```
    - **Example:** To remove **"Inkscape"**:
        ```
        sudo mpackage remove inkscape
        ```

You are now ready to use mpackage for a more streamlined and efficient package management experience on Manjaro!
