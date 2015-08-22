" © Arvind Singh arvind1.singh@gmail.com

iabbrev @@    arvind1.singh@gmail.com
iabbrev ccopy © Arvind Singh <arvind1.singh@gmail.com>

let mapleader      = ","
let maplocalleader = "\\"

if &compatible            | set nocompatible              | endif
if &encoding !=? 'utf-8'  | let &termencoding = &encoding | endif
if executable('rg')       | set grepprg=rg\ --vimgrep     | endif

set autoindent breakindent copyindent smartindent
set autoread autowrite nobackup noswapfile nowritebackup
set backspace=indent,eol,start formatoptions+=j formatoptions+=1 pastetoggle=<F2>
set cmdheight=2 laststatus=2 report=0 shortmess=aOc showcmd terse
set complete-=i completeopt=menu,noinsert,longest nrformats-=octal
set concealcursor=nc conceallevel=1
set cursorline lazyredraw matchtime=3 number ruler showmatch ttyfast
set diffopt=filler,context:4,iwhite display=truncate,uhex
set encoding=utf-8 fileencoding=utf-8 fileencodings=utf-8,latin1 fileformats=unix,mac,dos
set errorbells visualbell
set expandtab shiftround shiftwidth=4 smarttab softtabstop=4 tabstop=4
set fillchars="vert:\u259a,fold:\u00b7"
set foldclose=all foldlevel=1 foldlevelstart=10 foldmethod=marker foldopen+=jump
set hidden history=1000 switchbuf=usetab undolevels=1000 viminfo=!,%,'100,<100,h,s10
set gdefault hlsearch ignorecase incsearch smartcase
set listchars=eol:⏎,tab:⇥·,space:␣,trail:·,extends:⇉,precedes:⇇,conceal:¶,nbsp:⚭
set nomodeline modelines=0
set printoptions=paper:a4 tabpagemax=50 title
set shell=bash shellpipe="2>&1\|tee" shellslash noshelltemp
set showbreak=++ scrolloff=7 sidescroll=1 sidescrolloff=7 virtualedit=block nowrap
set timeout timeoutlen=3000 ttimeout ttimeoutlen=100
set wildignore=.*,*~,*.a,*.bak,*.o,*.pyc,*.class wildmenu wildmode=longest:full,full
set t_Co=256

inoremap jj        <esc>
nnoremap ;         :
nnoremap <leader>; :
inoremap <F1>      <esc>
nnoremap <F1>      <esc>
vnoremap <F1>      <esc>
nnoremap <tab>     %
vnoremap <tab>     %
nnoremap <silent>  <leader>/       :nohlsearch<cr>
nnoremap <silent>  <leader><space> :nohlsearch<cr>
nnoremap /         /\v
vnoremap /         /\v
nnoremap <leader>l :set            list!<cr>
nnoremap <leader>n :setlocal       number!<cr>
nnoremap <leader>q gqap
vnoremap <leader>q gq
nnoremap <leader>v V`]

"nnoremap <up>    <nop>
"nnoremap <down>  <nop>
"nnoremap <left>  <nop>
"nnoremap <right> <nop>
nnoremap <C-h>   <C-w>h
nnoremap <C-j>   <C-w>j
nnoremap <C-k>   <C-w>k
nnoremap <C-l>   <C-w>l

inoremap <C-U>     <C-G>u<C-U>
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr>
command! W         w !sudo tee % > /dev/null

au! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au! FocusLost   * :wa

let &highlight             = substitute(&highlight,'NonText','SpecialKey','g')
let g:solarized_bold       = 1
let g:solarized_contrast   = "normal"
let g:solarized_degrade    = 0
let g:solarized_italic     = 1
let g:solarized_termcolors = 16
let g:solarized_termtrans  = 1
let g:solarized_underline  = 1
let g:solarized_visibility = "normal"

call plug#begin()

Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'
Plug 'google/vim-codefmt'
Plug 'google/vim-codereview'
Plug 'google/vim-coverage'
Plug 'google/vim-syncopate'

Plug 'altercation/vim-colors-solarized'
Plug 'croaker/mustang-vim'
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'tpope/vim-vividchalk'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'ajh17/VimCompletesMe'
Plug 'dietsche/vim-lastplace'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-signify'

let g:python_highlight_all = 1
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'

"let g:autoformat_autoindent = 0
"let g:autoformat_retab      = 0
"Plug 'Chiel92/vim-autoformat'

"Plug '2072/PHP-Indenting-for-VIm'
"Plug 'Quramy/tsuquyomi'
"Plug 'chrisbra/unicode.vim'
"Plug 'chriskempson/base16-vim'
"Plug 'ervandew/supertab'
"Plug 'godlygeek/csapprox'
"Plug 'helino/vim-nasm'
"Plug 'jason0x43/vim-js-indent'
"Plug 'lifepillar/vim-mucomplete'
"Plug 'maksimr/vim-jsbeautify'
"Plug 'mattn/emmet-vim'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'reedes/vim-colors-pencil'
"Plug 'reedes/vim-pencil'
"Plug 'tobyS/pdv'
"Plug 'tobyS/vmustache'
"Plug 'rking/ag.vim'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
"Plug 'racer-rust/vim-racer'
"Plug 'rust-lang/rust.vim'
call plug#end()

call glaive#Install()
Glaive codefmt plugin[mappings]

"nmap <leader><tab> <plug>(fzf-maps-n)
"xmap <leader><tab> <plug>(fzf-maps-x)
"omap <leader><tab> <plug>(fzf-maps-o)
"imap <c-x><c-k>    <plug>(fzf-complete-word)
"imap <c-x><c-f>    <plug>(fzf-complete-path)
"imap <c-x><c-j>    <plug>(fzf-complete-file-ag)
"imap <c-x><c-l>    <plug>(fzf-complete-line)
"imap <expr>        <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

set t_Co=256
set guifont=Noto\ Mono\ 12 linespace=0
" colorscheme solarized
if &t_Co > 2    | syntax on           | endif
if &t_Co >= 256 | colorscheme gruvbox | endif

set background=light

let g:go_fmt_command                     = "goimports"
let g:go_highlight_build_constraints     = 1
let g:go_highlight_extra_types           = 1
let g:go_highlight_fields                = 1
let g:go_highlight_functions             = 1
let g:go_highlight_generate_tags         = 1
let g:go_highlight_methods               = 1
let g:go_highlight_operators             = 1
let g:go_highlight_types                 = 1
let g:go_snippet_case_type               = "camelcase"
let g:javascript_conceal_NaN             = "ℕ"
let g:javascript_conceal_arrow_function  = "⇒"
let g:javascript_conceal_function        = "ƒ"
let g:javascript_conceal_null            = "ø"
let g:javascript_conceal_prototype       = "¶"
let g:javascript_conceal_return          = "⇚"
let g:javascript_conceal_static          = "•"
let g:javascript_conceal_super           = "Ω"
let g:javascript_conceal_this            = "@"
let g:javascript_conceal_undefined       = "¿"
let g:mucomplete#enable_auto_at_startup  = 1
let g:pdv_template_dir                   = $HOME . "/.vim/plugged/pdv/templates_snip"
let g:php_syntax_extensions_enabled      = 1
let g:rainbow_active                     = 1
let g:rustfmt_autosave                   = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
let g:syntastic_python_flake8_args       = "--max-line-length=160"
let g:vim_json_syntax_conceal            = 1

nmap     ga        <plug>(EasyAlign)
vmap     <enter>   <plug>(EasyAlign)
"nnoremap <leader>u :GundoToggle<cr>
