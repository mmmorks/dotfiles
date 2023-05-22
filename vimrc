set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Powerline setup
set laststatus=2
set term=xterm-256color
set termencoding=utf-8
" set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
" set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'

let python_highlight_all=1
syntax on
filetype plugin indent on
set encoding=utf-8
set ic
let g:SimpylFold_docstring_preview=1

highlight LineNr ctermfg=DarkGrey

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline | highlight clear CursorLine | highlight clear CursorLineNR | highlight CursorLine ctermbg=236 | highlight CursorLineNR ctermfg=White
  au WinLeave * setlocal nocursorline
augroup END

set ignorecase
set smartcase

set number
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

:set tabstop=4 shiftwidth=4 expandtab

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Automatically close NERDTree when you open a file
let NERDTreeQuitOnOpen=1
"Nerd-tree open shortcut
map <C-n> :NERDTreeToggle<CR>

" Enable folding
autocmd FileType python set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" make backspaces more powerful
set backspace=indent,eol,start

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers=["python"]

" proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" YouCompleteMe settings
let g:ycm_enable_semantic_highlighting=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
highlight Pmenu ctermfg=White ctermbg=DarkGrey guifg=#ffffff guibg=#000000
highlight PmenuSel ctermfg=DarkGrey ctermbg=LightGrey guifg=#ffffff guibg=#000000

"python with virtualenv support
py3 << EOF
import os
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  with open(activate_this, 'r') as f:
    exec(f.read(), dict(__file__=activate_this))
EOF
