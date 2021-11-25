" Plugins
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-commentary'
call plug#end()

" General Settings
syntax enable                           " Enable syntax highlight
set nowrap                              " Disable line wrap
set mouse=a                             " Enable your mouse
set cursorline                          " Enable highlighting of the current line
set number                              " Show line number
set clipboard=unnamedplus               " Use system clipboard
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set cmdheight=2                         " More space for displaying messages
set laststatus=0			                  " Always display the status line
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent 				                  " Good auto indent
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Theme
colorscheme onedark

" Better than esc
inoremap jk <esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Commenting
vnoremap // :Commentary<cr>
nnoremap // :Commentary<cr>

" Change nvim config easily
nnoremap <leader>ev :e ~/.config/nvim/init.vim

