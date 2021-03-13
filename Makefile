all: brew stow

brew:
	brew bundle --file="${HOME}/.dotfiles/Brewfile"

stow:
	# Mirror directory structure first to avoid symlinking directories.
	rsync -a --filter="-! */" "${HOME}/.dotfiles/" "${HOME}"
	stow --verbose --restow --ignore '(.gitattributes|.DS_Store|Makefile)' --dir="${HOME}/.dotfiles" "."

.PHONY: all stow brew
