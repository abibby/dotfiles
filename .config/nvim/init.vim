
" =============================================================================
" # PLUGINS
" =============================================================================
" Load vundle
set nocompatible
filetype off
set rtp+=~/dev/others/base16/templates/vim/
call plug#begin()

Plug 'editorconfig/editorconfig-vim'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'

" Languages

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'marlonfan/coc-phpls'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()

colorscheme nord

" COC
source /home/adam/.config/nvim/coc.vim

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


" =============================================================================
" # Settings
" =============================================================================
set list
set listchars=tab:→\ ,trail:·,space:·,extends:»,precedes:«

set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number

set keymodel=startsel,stopsel
set clipboard+=unnamedplus

" Sane splits
set splitright
set splitbelow

" Permanent undo
set undodir=~/.vimdid
set undofile

set mouse=a

inoremap <silent> <C-Z>         <C-C>ui
inoremap <silent> <C-Z>         <C-C>ui


" =============================================================================
" # Key Bindings
" =============================================================================
" Slide lines up and down
nnoremap <A-j>                  :m .+1<CR>==
nnoremap <A-k>                  :m .-2<CR>==
inoremap <A-j>                  <Esc>:m .+1<CR>==gi
inoremap <A-k>                  <Esc>:m .-2<CR>==gi
vnoremap <A-j>                  :m '>+1<CR>gv=gv
vnoremap <A-k>                  :m '<-2<CR>gv=gv

nnoremap <A-Down>              :m .+1<CR>==
nnoremap <A-Up>                :m .-2<CR>==
inoremap <A-Down>              <Esc>:m .+1<CR>==gi
inoremap <A-Up>                <Esc>:m .-2<CR>==gi
vnoremap <A-Down>              :m '>+1<CR>gv=gv
vnoremap <A-Up>                :m '<-2<CR>gv=gv

" normal copy/paste
vmap <C-c>                     y<Esc>i
vmap <C-x>                     d<Esc>i
imap <C-v>                     <Esc>pi
imap <C-c>                     <Esc>yyi
imap <C-x>                     <Esc>ddi

" map <C-z> <Esc>
" imap <C-z> <Esc>ui

vmap <BS>                      "_d

noremap <silent> <C-S>         :w<CR>
vnoremap <silent> <C-S>        <C-C>:w<CR>
inoremap <silent> <C-S>        <C-O>:w<CR>


