# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/yassinebelmamoun/.oh-my-zsh"

# Ruby
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# Source bash profile
source ~/.bash_profile

# Source bash profile
source ~/.zprofile

# make use of pyenv
eval "$(pyenv init -)"

# Vim  or Emacs mode
bindkey -v
PS1+='${VIMODE}'
#   '$' for normal insert mode
#   a big red 'I' for command mode - to me this is 'NOT insert' because red
function zle-line-init zle-keymap-select {
    DOLLAR='%B%F{green}$%f%b '
    GIANT_I='%B%F{red}I%f%b '
    VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Theme
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Plugins
plugins=(
  git
  osx
  dotenv
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
  tmux
  history-substring-search
  themes
)

source $ZSH/oh-my-zsh.sh

# User configuration
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#
alias python=python3

alias repos="cd ~/Documents/repos"
alias mrepos="cd ~/Documents/repos/manatal"

#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
alias vim=/usr/local/bin/vim

export VIMINIT='source $MYVIMRC'
export MYVIMRC='~/.vim/.vimrc'
export PATH="/usr/local/opt/ruby/bin:$PATH"
ctags=/usr/local/bin/ctags

# tmux configuration
alias tmux="TERM=screen-256color-bce tmux"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
export HOMEBREW_FORCE_BREWED_CURL=1
export DISABLE_AUTO_TITLE='true'
export PATH="usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
