" Nvim basic config
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2
set noshowmode

"pecify a directory for plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion' " Jump
Plug 'scrooloose/nerdtree' " NERDTREE
Plug 'christoomey/vim-tmux-navigator' " Switch between tabs
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status of files on nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Icons of files
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'airblade/vim-gitgutter' " Git gutter on files

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'


Plug 'dracula/vim'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" GRUVBOX
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

" EASYMOTION
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

" NERDTREE
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" NERDTREE-GIT
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ 'Staged'    : '#0ee375',
    \ 'Modified'  : '#d9bf91',
    \ 'Renamed'   : '#51C9FC',
    \ 'Untracked' : '#FCE77C',
    \ 'Unmerged'  : '#FC51E6',
    \ 'Dirty'     : '#FFBD61',
    \ 'Clean'     : '#87939A',
    \ 'Ignored'   : '#808080'
    \ }
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'M',
    \ 'Staged'    :'S',
    \ 'Untracked' :'U',
    \ 'Renamed'   :'R',
    \ 'Unmerged'  :'C',
    \ 'Deleted'   :'D',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
    \ }

" Basic map 
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript
