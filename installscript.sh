#!/bin/bash

echo "Making makeshortcut.sh executable.."

chmod +x quickaur.sh

if [ -d "~/Scripts/" ]; then
	echo "Scripts folder exists.."
else
	echo "Scripts folder does not exist.."

	echo "Making scripts folder.."

	mkdir ~/Scripts
fi

echo "Moving quickaur script.."

mv quickaur.sh ~/Scripts

echo "Connecting script to .bashrc.."

echo "" >> ~/.bashrc
echo "source ~/Scripts/quickaur.sh" >> ~/.bashrc

echo "Installation complete!"
