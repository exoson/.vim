set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'jjo/vim-cue'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
" Plugin 'tpope/vim-fugitive'
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:ycm_java_jdtls_extension_path = [
  \ '/home/ekattainen/.vim/pack/vimspector/opt/vimspector/gadgets/linux/'
  \]

let g:ycm_auto_hover=''

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

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
" autocmd BufWritePre * %s/\s\+$//e
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
nnoremap tb :tabnew<Space>%:p:h
nnoremap tm :e<Space>%:p:h
nnoremap tw :tabclose<CR>
nnoremap ts :vimgrep<Space>
nnoremap ti :cn<CR>
nnoremap tu :cp<CR>
nnoremap <F4> :checktime<CR>
nnoremap to :TlistToggle<CR>
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
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set wildmode=longest,list
set relativenumber
set pastetoggle=<F3>

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

set shellcmdflag=-ic
set clipboard=unnamedplus


command Jsonformat %!jq .

packadd! vimspector

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
