#!/bin/bash

stow -t zsh zsh-custom
stow zsh
stow vim
stow zathura
stow ssh

# if neovim isn't installed on this computer...
if command -v nvim &> /dev/null
then
	stow nvim
else
	# recommend that you install it
	echo "I usually use nvim. I recommend you install it and then rerun this script."
fi
