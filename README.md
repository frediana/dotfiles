# Config

Misc config I use on my daily work.

## Mac

## Linux

## shell

I'am using ZSH with only 2 external plugins.

* [Pure prompt](https://github.com/sindresorhus/pure) Pretty, minimal and fast ZSH prompt
* [Zsh Highling](https://github.com/zsh-users/zsh-syntax-highlighting) Fish shell like syntax highlighting for Zsh.
* [fancy-ctrl-z](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/fancy-ctrl-z) Use Ctrl-Z to switch back to Vim
* [mandatory aliases](http://lkdjiin.github.io/blog/2015/07/20/de-meilleurs-alias-avec-zsh/) Forces me to use alias when exists.

I also have some nice litle tweaks:
* I always echoing the expanded command when executing an alias. This is helpful on pair programming, so the other developer
does not get lost with my personal aliases.
* I have a little function that enforces me to use an alias when it exists. For exemple if I have an alias ```gc``` for ```git commit```
then if I type ```git commit``` an warning is displayed to encourage me ot use the alias.

### Setup ZSH config

```
ln -s zsh/zshrc ~/.zshrc
```

## vim

## git

### TIG

[Text-mode Interface for Git](https://jonas.github.io/tig/)

#### Setup TIG conf

Setup for tig version > 2.

```
ln -s tigrc ~/.tigrc
```

## tmux


