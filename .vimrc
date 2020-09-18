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

" Display status-bar
	set laststatus=2

" Set wordcount in status bar
let g:word_count="<unknown>"
function WordCount()
	return g:word_count
endfunction
function UpdateWordCount()
	let lnum = 1
	let n = 0
	while lnum <= line('$')
		let n = n + len(split(getline(lnum)))
		let lnum = lnum + 1
	endwhile
	let g:word_count = n
endfunction
" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).
set updatetime=1000
augroup WordCounter
	au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END
" Set statusline, shown here a piece at a time
highlight User1 ctermbg=yellow guibg=green ctermfg=black guifg=black
set statusline=%1*			" Switch to User1 color highlight
set statusline+=%<%F			" file name, cut if needed at start
set statusline+=%M			" modified flag
set statusline+=%y			" file type
set statusline+=%=			" separator from left to right justified
set statusline+=\ %{WordCount()}\ words,
set statusline+=\ col:\ %c,
set statusline+=\ %l/%L\ lines,\ %P	" percentage through the file


