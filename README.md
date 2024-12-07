# QuickAur
A simple AUR repository installer.

# A Simple Shell Script to Send Executables to Your Desktop!
This shell scripts will allow you to quickly install AUR archlinux packages:
[AUR](https://aur.archlinux.org/)

# How to Use
First install the repo with:

``git clone https://github.com/codythefennec/quickaur.git``

Enter that directory and make the scripts executable using:

``chmod +x installscripts.sh``

Note theis command just makes the file executable, if you want to verify integrity please read over the code within the scripts!

Then simply run:

``./installscripts.sh``

This will:
 - Make the quickaur script executable
 - Create Scripts folder in home dir
 - Move the shortcut script to the new scripts folder
 - Add a link to the script in your .bashrc file

# Usage
Run the command:

``quickaur {AUR git link here}``

Then it will:
- Clone the repository
- Enter it
- ``makepkg -sci``
- Then delete the cloned folder to clean things up
