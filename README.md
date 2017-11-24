**Table of Contents**

- [Introduction](#introduction)
- [Shell](#shell)
  - [ZSH Plugins](#zsh-plugins)
  - [Setup ZSH config](#setup-zsh-config)
- [vim](#vim)
- [GIT](#git)
  - [Setup GIT config](#setup-git-config)
  - [TIG](#tig)
    - [Setup TIG conf](#setup-tig-conf)
- [tmux](#tmux)
- [Mac](#mac)
  - [Homebrew](#homebrew)
- [Linux](#linux)

# Introduction

Misc config I use on my daily work.

[solarized](http://ethanschoonover.com/solarized) is my favorite color scheme and I'm using it pretty much everywhere.

# Shell

I'am using ZSH with, with only a few small, nice and easy plugins.

## ZSH Plugins

* [Pure prompt](https://github.com/sindresorhus/pure) Pretty, minimal and fast ZSH prompt
* [Zsh Highling](https://github.com/zsh-users/zsh-syntax-highlighting) Fish shell like syntax highlighting for Zsh.
* [jancy-ctrl-z](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/fancy-ctrl-z) Use Ctrl-Z to switch back to Vim
* [expand aliases](https://github.com/jarmo/expand-aliases-oh-my-zsh) Expands aliases while typing them in terminal.
* [mandatory aliases](http://lkdjiin.github.io/blog/2015/07/20/de-meilleurs-alias-avec-zsh/) Forces me to use alias when exists.
* [solarized dir colors](https://github.com/seebi/dircolors-solarized) Display dirs using solarized color scheme.
* [zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) Fish-like autosuggestions for zsh

## Setup ZSH config

```
ln -s zsh/zshrc ~/.zshrc
```

# vim

# GIT

Since ```git``` is one of my best daily work tool I'm using a bunch of alias for it. Everything is on my gitconfig config file.

##  Setup GIT config

```
ln -s gitconfig ~/.gitconfig
ln -s gitignore ~/.gitignore
```

## TIG

[Text-mode Interface for Git](https://jonas.github.io/tig/) is a very nice, intuitive and highly configurable command line tool
to explore GIT repository.

### Setup TIG conf

Setup for tig version > 2.

```
ln -s tigrc ~/.tigrc
```

# tmux

# Mac

* I'm using [iterm2](https://www.iterm2.com/) as terminal emulator.

## Homebrew

[Homebrew](https://brew.sh/index_fr.html) is my command line package manager and my favorite packages are:

* [grip](https://github.com/joeyespo/grip) Preview GitHub Markdown files.
* [the_silver_searcher](https://geoff.greer.fm/ag/) Fast searching code tool.
* [Homebrew](https://brew.sh/index_fr.html) is my command line package manager.
* [tmux](https://github.com/tmux/tmux) terminal multiplexer
* [vim](http://www.vim.org/) Come on, you know what it is.

# Linux

My favorite distribution is Debbian and the only window manager I like to work on is [Awesome WM](https://awesomewm.org/).

