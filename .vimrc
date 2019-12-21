" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set linebreak
	set showbreak=+++
	set visualbell
	set autoindent
	set hlsearch
	set smartcase
	set ignorecase
	set incsearch
	set undolevels=1000
	let g:ft_ignore_pat = '\.\(Z\|gz\|bz2\|zip\|tgz\|txt\)$'

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Enable autocompletion:
	set wildmode=longest,list,full

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l


