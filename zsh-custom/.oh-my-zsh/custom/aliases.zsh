# aliases.zsh
# set my aliases

# i got used to just running `open` on MacOS
alias open=xdg-open

# if fdfind is installed
(( $+commands[fdfind] )) && alias fd=fdfind

# if neovim is installed
(( $+commands[nvim] )) && alias vi=nvim
