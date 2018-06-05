if has('gui_running')
  "Remove Menubar and Toolbar for use in gVim
  set guioptions -=m
  set guioptions -=T
endif
syn match pythonBoolean "\(\W\|^\)\zsself\ze\."
ab pdb import pdb; pdb.set_trace()
set langmenu=en_US
let $LANG = 'en_US'
set noeb vb t_vb=
autocmd BufWritePre * %s/\s\+$//e
noremap <c-s> :w<CR>
nnoremap ¤ $
nnoremap ½ 0
nnoremap § ^
vnoremap ¤ $
vnoremap ½ 0
vnoremap § ^
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap th :tabfirst<CR>
nnoremap tn :tabnew<Space>
nnoremap tw :tabclose<CR>
nnoremap ts :vimgrep<Space>
nnoremap ti :cn<CR>
nnoremap tu :cp<CR>
nnoremap <F5> :checktime<CR>
set hidden
set nowrap
set backspace=indent,eol,start
set number
set showmatch
set incsearch
set hlsearch
set history=1000
set undolevels=1000
set visualbell
set noerrorbells
set nobackup
set noswapfile
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set wildmode=longest,list
set relativenumber

" gitgutter
set updatetime=250


colorscheme onedark

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers=['python','pylint','pep8']

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'
