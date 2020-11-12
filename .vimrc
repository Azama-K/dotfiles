set fileencoding=utf-8
set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set ruler
set title
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
" set cursorcolumn

set virtualedit=onemore
set visualbell
set autoindent
set smartindent

set showmatch

set laststatus=2 

set wildmode=list:longest


nnoremap j gj
nnoremap k gk


"syntax on
"autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
"colorscheme molokai

set expandtab
set tabstop=2
set shiftwidth=2


set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set mouse=a

"inoremap <silent> jj <Esc>
"noremap <silent> ã£j <ESC>

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>

nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
"Add to blank line when push O 

set nrformats=

let mapleader = "\<Space>"

set clipboard+=unnamed

set backspace=indent,eol,start


augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END


" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""

" if has('vim_starting')
"     let &t_SI .= "\e[6 q"
"     let &t_EI .= "\e[2 q"
"     let &t_SR .= "\e[4 q"
" endif
"インサート時カーソルを縦線に


"dein.vim
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/e185731/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/e185731/.vim/dein')
  call dein#begin('/Users/e185731/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/e185731/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

call dein#add('cohama/lexima.vim')

call dein#add('tomasr/molokai')
autocmd ColorScheme * highlight Visual ctermfg=226 guifg=#008800
colorscheme molokai

call dein#add('nathanaelkane/vim-indent-guides')
":IndentGuidesToggle
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" let g:indent_guides_start_level = 1
" let g:indent_guides_guide_size = 1

call dein#add('scrooloose/nerdtree')
nnoremap <Leader>a :NERDTreeToggle<CR>

call dein#add('thinca/vim-quickrun')

call dein#add('simeji/winresizer')
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
let g:winresizer_start_key = '<C-E>'

call dein#add('tpope/vim-commentary')

"End dein Scripts-------------------------
":call dein#install()
