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
compinit -u

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# Global exports
export TERM="screen-256color"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR="$VISUAL"
export KEYTIMEOUT=1

# Path exports
export PATH=$PATH:bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Load aliases
source $HOME/.dotfiles/zsh/aliases

# Load local conf if present
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Prompt
autoload -U promptinit && promptinit
prompt pure

# zsh auto suggestion plugin
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Shell syntax highling plugin
source $HOME/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(gdircolors ~/.dotfiles/dircolors-solarized/dircolors.256dark)
