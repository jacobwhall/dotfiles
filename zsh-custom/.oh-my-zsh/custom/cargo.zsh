# cargo.zsh
# add ~/.cargo/bin to $PATH
# config rust programs

# if there is a ~/.cargo/bin directory, add it to $PATH
[ -d "$HOME/.cargo/bin" ] && export PATH=$HOME/.cargo/bin:$PATH

# install / update mcfly:
# cargo install --git https://github.com/cantino/mcfly.git --branch master
#
# if mcfly is installed, initialize mcfly
(( $+commands[mcfly] )) && eval "$(mcfly init zsh)"


