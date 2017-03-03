precmd_functions=()

# Allow completing of the remainder of a command
bindkey "^N" insert-last-word

bindkey -v
bindkey '^R' history-incremental-search-backward

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


export PATH=$PATH:bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin
export VISUAL=vim
export EDITOR="$VISUAL"
export KEYTIMEOUT=1

# Sourcing of other files
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
# source $HOME/.dotfiles/zsh/prompt
source $HOME/.dotfiles/zsh/explicit_aliases.sh
source $HOME/.dotfiles/zsh/mandatory_aliases.sh

# tmuxinator completion
source $HOME/.dotfiles/zsh/plugins/tmuxinator/completion/tmuxinator.zsh

# Autojump config
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Load local conf if present
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Prompt pure
autoload -U promptinit && promptinit
prompt pure

source $HOME/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(gdircolors ~/.dotfiles/dircolors-solarized/dircolors.256dark)
