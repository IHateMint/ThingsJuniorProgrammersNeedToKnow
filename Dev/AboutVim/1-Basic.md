## What is Vim
`Vim` is a simple text editor, so it enables us to change the files without using IDE or Visual Studio Code.
It can be installed by `apt-get install vim` command.

## .vimrc
To use vim efficiently, we need some setups. I will not elaborate on using *pretty* vim, but will only introduce useful commands and settings. To use *pretty* vim, refer to other pages that gives kind instructions on how to use zsh and beyond.

`.vimrc` holds all the settings for vim. Below are the setting that are very useful.
```
syntax enable       # Automatically highlights grammar

filetype indent on
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set expandtab

set relativenumber  # When moving across many lines, or deleting only exact number of lines, this relative numbering is helpful.
set number          # Shows current line number
set cursorline

set showmatch       # Hightights the matching brackets
set showcmd         # Shows (partial) command in the last line of the screen
set ignorecase
set smartcase
set hlsearch        
set incsearch       

set fileencodings=utf8,euc-kr
set encoding=utf-8

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
```
