alias open=xdg-open

# is neovim installed on this computer?
if command -v nvim &> /dev/null
then
	# if so, use neovim instead of vim
	alias vi=nvim
fi
