# Allow completing of the remainder of a command
bindkey "^N" insert-last-word

# Vi mode
bindkey -v

# Show contents of directory after cd-ing into it
chpwd() {
    ls -lrthG
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Enable completion
autoload -U compinit
compinit

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

alias tmux="TERM=screen-256color-bce tmux"
export TERM="screen-256color"
alias tmux="tmux -2"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Sourcing of other files
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
source $HOME/.dotfiles/zsh/prompt

export PATH=$PATH:bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin
export VISUAL=vim
export EDITOR="$VISUAL"
export KEYTIMEOUT=1

source /Users/adrien/.dotfiles/tmuxinator/completion/tmuxinator.zsh

# Autojump config
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
