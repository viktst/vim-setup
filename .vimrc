" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

set number
set belloff=all
set clipboard=unnamed

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set shiftround
set autoindent
set smartindent
set backspace=indent,eol,start

syntax on
set background=dark
colorscheme sublimemonokai

hi Normal ctermfg=White ctermbg=Black
hi LineNr ctermfg=LightBlue
hi CursorLine ctermbg=235

hi Comment ctermfg=LightBlack
hi Keyword ctermfg=LightYellow
hi Type ctermfg=LightCyan

nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG

vnoremap <C-c> "+y
inoremap <C-v> <C-r>+

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

autocmd FileType cpp nnoremap <F9> :w<CR>:!g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r<CR>
autocmd FileType python nnoremap <F5> :w<CR>:split | terminal python3 "%"<CR>
autocmd FileType java nnoremap <F5> :w<CR>:!javac % && java %:r<CR>