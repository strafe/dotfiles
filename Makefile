all: brew stow

brew:
	brew bundle --file="${HOME}/.dotfiles/Brewfile"

stow:
	# Mirror directory structure first to avoid symlinking directories.
	rsync --archive --filter="-! */" "${HOME}/.dotfiles/home/" "${HOME}"
	stow --restow --ignore '.DS_Store' --dir="${HOME}/.dotfiles" "home"

.PHONY: all stow brew
