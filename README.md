# my config files

In this repository are my current configuration files.
I install them on every computer I use.

## install

I use [GNU Stow](https://www.gnu.org/software/stow/) to make symlinks in my home folder that correspond to the files in this repository.
This system was inspired by blog posts by [Alex Pearce](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/) and [Bastian Rieck](https://bastian.rieck.me/blog/posts/2019/dotfiles_stow/).

### install stow
On Fedora/CentOS:
```
sudo dnf install stow
```
or on Debian/Ubuntu:
```
sudo apt install stow
```

### clone this repository

You should do this in your home directory.
If you don't you'll have to tell stow that your target directory is ~/ using the `-t` option
```
cd
git clone --recurse-submodules git@github.com:jacobwhall/dotfiles.git
```

### run install script

```
./install.sh
```

## update

The following command not only updates my configurations, but the submodules that they use too:
```
git pull --recurse-submodules
```

## manual install

### install zsh theme

I use git submodules to keep various setups up-to-date, including my [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and a theme I use with it called [powerlevel10k](https://github.com/romkatv/powerlevel10k).
Once the repositories are cloned, run the following command to install my custom oh-my-zsh config including powerlevel10k:
```
# cd into the dotfiles directory
stow --target zsh zsh-custom
# now install zsh with custom config
stow zsh
```
If you can't use stow for some reason, see below.

### stow configs

Each of the folders in this directory represent a program's configuration.
As long as this repository is in your home directory, just run `stow [program]` to install that program's configuration files.
I'll update the install.sh script soon to do all of them automatically.

### without stow

All stow does is create symbolic links in the parent directory.
If stow becomes a nuisance for one reason or another, just create a symbolic link for each file/folder in your home directory:
```
ln -s .file ~/.file
```
If you're installing zsh, you'll have to first install the contents of zsh-custom to the zsh/.oh-my-zsh/custom directory.
Here's an example:
```
# You might have to tweak the next line, I haven't tested it
ln -s dotfiles/zsh\ themes/powerlevel10k dotfiles/.oh-my-zsh/custom/themes/
```
