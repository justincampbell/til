---
date: 2012-10-03
slug: manage-vim-packages-with-vundle
title: Manage VIM packages with Vundle
---

Manage VIM packages with [Vundle](https://github.com/gmarik/vundle):

```vim
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Indent-Guides'
Bundle 'SuperTab'
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'ack.vim'
Bundle 'bbommarito/vim-slim'
Bundle 'ctrlp.vim'
Bundle 'fortes/vim-railscasts'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'postmodern/vim-yard'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
filetype plugin indent on
```

More like Bundler, less cursing at git submodules.

from @nicholaides
