all: brew stow

brew:
	brew bundle --file="${HOME}/.dotfiles/Brewfile"

stow:
	stow --verbose --restow --ignore '(.gitattributes|.DS_Store|Makefile)' --target="${HOME}" --dir="${HOME}/.dotfiles" .

.PHONY: all stow brew
