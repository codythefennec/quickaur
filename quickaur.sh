#!/bin/bash
function quickaur {
if [[ "$1" =~ https:\/\/aur.archlinux.org\/(([a-z]*||[A-Z]*||[0-9]*)*||-)*.git ]]; then
	echo "Valid link found at $1.."

	# prompt user
	echo "Cloning git.."

	# change our user
	git clone $1
	wait

	# figure out the github clone
	newDir=${1:26:-4}

	# prompt user
	echo "Changing directory to $newDir.."

	# change the directory
	cd $newDir

	# make the package and install as a default user
	makepkg -ics
	wait

	# prompt user
	echo "Leaving $newDir.."
	# cd out once
	cd ../

	echo "Deleting $newDir.."
	# remove unneeded dir
	rm -rf $newDir

	echo "$newDir has been installed !"
else
	echo "Invalid link.."
	echo "Exiting.."
fi
}
