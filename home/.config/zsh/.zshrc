#                   __                     
#                  /\ \                    
#     ____     ____\ \ \___   _ __   ___   
#    /\_ ,`\  /',__\\ \  _ `\/\`'__\/'___\ 
#  __\/_/  /_/\__, `\\ \ \ \ \ \ \//\ \__/ 
# /\_\ /\____\/\____/ \ \_\ \_\ \_\\ \____\
# \/_/ \/____/\/___/   \/_/\/_/\/_/ \/____/
#

# shell options.
setopt share_history

# zsh settings.
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_DATA_HOME}/zsh/history"

# aliases.
alias c='clear'
alias la='gls -hA --group-directories-first --color=auto'
alias ll='gls -lhA --group-directories-first --color=auto'
alias vi='nvim'
alias history='history 0'

# completions.
FPATH=""$(brew --prefix)"/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"

# zsh plugins (brew install zsh-*).
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# prompt.
eval "$(starship init zsh)"
