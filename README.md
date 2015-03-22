VIM Configuration
=================

This repository contains my vim configuration and plugins.

I use Pathogen to load my plugins and have them configured as submodules.

It's mostly here so I have a portable vim configuration.

Installation
------------

git clone to ~/.vim

update submodules

`git submodule update --init --recursive`

install tern's requirements using npm

`cd ~/.vim/bundle/tern_for_vim && npm i`

install YouCompleteMe

`cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.sh`

Notes
-----

Use iTerm if you want mouse support without holding down <kbd>option</kbd>.
