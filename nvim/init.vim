let mapleader =","

call plug#begin('$HOME/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'LukeSmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim', {'for': ['html']}
Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'othree/html5.vim', {'for': 'html'} "Html5 support
Plug 'digitaltoad/vim-pug', {'for': ['jade', 'pug']} "Pug/Jade Support

"Endings for HTML, XML, etc ...
Plug 'tpope/vim-ragtag'

"Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Style
Plug 'wavded/vim-stylus', {'for': ['markdown']}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'gko/vim-coloresque' "Color Preview
Plug 'dylanaraps/wal.vim'

"Javascript"
Plug 'pangloss/vim-javascript'

"JSON
Plug 'elzr/vim-json', {'for': 'json'}

"Finder for Vim
Plug 'kien/ctrlp.vim'

"Multiple selection"
Plug 'terryma/vim-multiple-cursors'
call plug#end()

colorscheme wal
set bg=dark
set mouse=a

" Some basics:
	set nocompatible
	set number relativenumber
	filetype plugin on
	syntax on
	set encoding=utf8
	set visualbell

	set autoindent
	set smartindent

	set linebreak
	set showcmd "show incomplete command
	set shell=/bin/bash
	set cmdheight=2
	set title "terminal title
	set cursorline
	set hlsearch

	set ruler "show cursor position"
	set mousehide "hide mouse cursor while tiping"

	set confirm "prompt when existing from an unsaved file"
	set laststatus=2

"autoreload init.vim
	autocmd! BufWritePost init.vim source %


"General Mappings
	"save
	nmap <leader>, :w<CR>
	map <C-s> :w<CR>


" Disables automatic commenting on new line
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable autocompletion
	set wildmenu
	set wildmode=longest,list,full

" Toggle autocompiler
	map <leader>a :!setsid autocompiler % &<CR>

" Compile document: md ... (cf .scripts/) -> autocompile & compiler
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Autotically deletes all trailing whitespaces on save
	autocmd BufWritePre * %s/\s\+$//e

" Nerd Tree
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTre") && b:NERDTree.isTabTree()) | q | endif
	map <C-n> :NERDTreeToggle<CR>

" Cmd perso
	map <C-q> :q<CR>
