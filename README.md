# My config files

In this repository are my current configuration files.
I install them on every computer I use.

## Install

To install, create a symbolic link for each file/folder in your home directory:
```
cd
git clone --recurse-submodules https://github.com/jacobwhall/dotfiles
# You might have to tweak the next line, I haven't tested it
ln -s dotfiles/zsh\ themes/powerlevel10k dotfiles/.oh-my-zsh/custom/themes/
ln -s .file ~/.file
```
