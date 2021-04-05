ZDOTDIR="${HOME}/.config/zsh"

# Cleaner home directory.
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export LESSHISTFILE=-

# Preferred programs.
export EDITOR=vi
export VISUAL=code
export PAGER=less

# Add to PATH.
export PATH="\
${HOME}/.local/bin:\
${PATH}"
