let olokai_original = 1
let g:rehash256 = 1
set t_Co=256 
" Switch syntax highlighting on, when the terminal has colors
" if (t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"  syntax on
" endif
syntax on


" Javascript syntax hightlight
syntax enable

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Color scheme
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set encoding=utf-8                                                              
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936,gb18030

" Softtabs, 2 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1


set matchpairs+=<:>
" 高亮搜索 忽略大小写
set hlsearch
set ignorecase smartcase

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
hi Normal ctermbg=none
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\t/    /ge

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin  'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Lokaltog/vim-powerline'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non github repos
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
nmap <F2> :NERDTreeToggle <CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif
set number
" set mouse=a
" Numbers
" set numberwidth=5
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
