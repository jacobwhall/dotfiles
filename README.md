# My config files

In this repository are my current configuration files.
I install them on every computer I use.

## Install

I use [GNU Stow](https://www.gnu.org/software/stow/) to make symlinks in my home folder that correspond to the files in this repository.
This system was inspired by blog posts by [Alex Pearce](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/) and [Bastian Rieck](https://bastian.rieck.me/blog/posts/2019/dotfiles_stow/).

### Install stow
On Fedora/CentOS:
```
sudo dnf install stow
```
or on Ubuntu:
```
sudo apt install stow
```

### Clone this repository

You should do this in your home directory.
If you don't you'll have to tell stow that your target directory is ~/ using the `-t` option
```
cd
git clone --recurse-submodules https://github.com/jacobwhall/dotfiles
```

### install zsh theme

I use git submodules to keep various setups up-to-date, including my [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and a theme I use with it called [powerlevel10k](https://github.com/romkatv/powerlevel10k).
Once the repositories are cloned, run the following command to install my custom oh-my-zsh config including powerlevel10k:
```
# cd into the dotfiles directory
stow --target zsh zsh-custom
# now install zsh with custom config
stow zsh
```

### stow configs

Just run `stow [program]` to install that program's configuration files.
I'll update the install.sh script soon to do all of them automatically.

## Manual Install

If stow becomes a nuisance for one reason or another, just symbolic link for each file/folder in your home directory:
```
# You might have to tweak the next line, I haven't tested it
ln -s dotfiles/zsh\ themes/powerlevel10k dotfiles/.oh-my-zsh/custom/themes/
ln -s .file ~/.file
```
