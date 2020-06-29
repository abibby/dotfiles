
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

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()

colorscheme nord

" =============================================================================
" Language Server
" =============================================================================

" Required for operations modifying multiple buffers like rename.
set hidden

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

set list
set listchars=tab:→\ ,trail:·

set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number

noremap <silent> <C-S>          :w<CR>
vnoremap <silent> <C-S>         <C-C>:w<CR>
inoremap <silent> <C-S>         <C-O>:w<CR>

source /home/adam/.config/nvim/coc.vim

