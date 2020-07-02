
let mapleader = "\<Space>"

" =============================================================================
" # PLUGINS
" =============================================================================
" Load vundle
set nocompatible
filetype off
set rtp+=~/dev/others/base16/templates/vim/
call plug#begin()

Plug 'editorconfig/editorconfig-vim'
" Plug 'preservim/nerdtree'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Languages

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'marlonfan/coc-phpls'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()

" autocmd vimenter * NERDTree
colorscheme nord

" COC
source /home/adam/.config/nvim/coc.vim

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
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
set noshowmode

" =============================================================================
" # Key Bindings
" =============================================================================
nnoremap ; :

noremap <silent> <C-Z>          ui
noremap <silent> <C-Z>          ui
inoremap <silent> <C-Z>         <C-o>ui
inoremap <silent> <C-Z>         <C-o>ui
inoremap <silent> <C-Z>         <C-o>ui
inoremap <silent> <C-Z>         <C-o>ui

" Slide lines up and down
nnoremap <A-j>                  :m .+1<CR>==
nnoremap <A-k>                  :m .-2<CR>==
inoremap <A-j>                  <Esc>:m .+1<CR>==gi
inoremap <A-k>                  <Esc>:m .-2<CR>==gi
vnoremap <A-j>                  :m '>+1<CR>gv=gv
vnoremap <A-k>                  :m '<-2<CR>gv=gv

nnoremap <A-Down>               :m .+1<CR>==
nnoremap <A-Up>                 :m .-2<CR>==
inoremap <A-Down>               <Esc>:m .+1<CR>==gi
inoremap <A-Up>                 <Esc>:m .-2<CR>==gi
vnoremap <A-Down>               :m '>+1<CR>gv=gv
vnoremap <A-Up>                 :m '<-2<CR>gv=gv

" normal copy/paste
vmap <C-c>                      y<Esc>i
vmap <C-x>                      d<Esc>i
imap <C-v>                      <Esc>pi
imap <C-c>                      <Esc>yyi
imap <C-x>                      <Esc>ddi
map <C-v>                       pi
map <C-c>                       yyi
map <C-x>                       ddi

" map <C-z> <Esc>
" imap <C-z> <Esc>ui

vmap <BS>                       "_d

noremap <silent> <C-S>          :w<CR>
vnoremap <silent> <C-S>         <C-C>:w<CR>
inoremap <silent> <C-S>         <C-O>:w<CR>

noremap <silent> <C-S-F>        :Rg<CR>
vnoremap <silent> <C-S-F>       :Rg<CR>
inoremap <silent> <C-S-F>       :Rg<CR>

noremap <silent> <C-p>          :GFiles<CR>
vnoremap <silent> <C-p>         :GFiles<CR>
inoremap <silent> <C-p>         :GFiles<CR>

" Fast Movement
noremap <silent> <C-Up>       10<Up>
vnoremap <silent> <C-Up>      <Esc>10<Up>v
inoremap <silent> <C-Up>      <Esc>10<Up>i
noremap <silent> <C-Down>       10<Down>
vnoremap <silent> <C-Down>      <Esc>10<Down>v
inoremap <silent> <C-Down>      <Esc>10<Down>i

" Tabs
noremap <silent> <C-t>          :tabe<CR>
inoremap <silent> <C-t>         <Esc>:tabe<CR>
vnoremap <silent> <C-t>         <Esc>:tabe<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
