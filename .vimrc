call pathogen#infect()

autocmd!
set viminfo='100,%,/50,:50,<50,h

" Man viewer plugin
runtime ftplugin/man.vim


" Buffers settings
set autowriteall
set hidden


filetype indent on
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
set nohlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set scrolloff=3
set number
set nowrap

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set foldmethod=syntax
set foldlevel=25

syntax enable
set background=light

vnoremap < <gv
vnoremap > >gv

set showmatch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
set backspace=2
set termencoding=utf-8
syntax on
set ruler

" Show things that are normally not visible
set list
" Show tilda instead of trailing whitespace
set listchars=trail:~,tab:>-

set laststatus=2
set wildmenu
set showcmd

set vb t_vb=            " Disable beep
au GUIEnter * set t_vb=

set nosplitbelow

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hotkeys
nnoremap <silent> <F2> :tabprev<CR>
inoremap <silent> <F2> <Esc>:tabprev<CR>
nnoremap <silent> <F3> :tabnext<CR>
inoremap <silent> <F3> <Esc>:tabnext<CR>

nnoremap <silent> <C-8> :TlistToggle<CR>
inoremap <silent> <C-8> <Esc>:TlistToggle<CR>
nnoremap <silent> <C-9> :MarksBrowser<CR>
inoremap <silent> <C-9> <Esc>:MarksBrowser<CR>
nnoremap <silent> <C-0> :BufExplorer<CR>
inoremap <silent> <C-0> <Esc>:BufExplorer<CR>

set pastetoggle=<C-F11>

nnoremap : q:i
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for different filetypes
autocmd BufReadPost *.[ch] call On_C_Load()
autocmd BufReadPost *.{[Hh][Tt][Mm]?},*.tpl call On_HTML_Load()
autocmd BufReadPost *.phtml set filetype=php
au! BufRead,BufNewFile *.json setfiletype json
au! BufRead,BufNewFile *.rsl setfiletype rsl
au! BufRead,BufNewFile *.ooc setfiletype ooc

function! On_C_Load()
    set cindent
    set formatoptions=cqr
endfunction

function! On_HTML_Load()
    runtime! syntax/html.vim
endfunction

" Tag files
set tags=./tags*,tags

au! GuiEnter * set t_vb=

"Quick Explore
map <F4> <Esc>:Explore<CR>

" Conf for minibufexpl
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitBelow = 0

let c_no_curly_error=1

if has("gui")
  set guioptions=
endif

" Highlighting bad formatting.
highlight BAD_FORMATTING ctermbg=white
autocmd Syntax * syntax match BAD_FORMATTING /\s\+$\|\t\|.\{79\}/ containedin=ALL

" Make make parallel
set makeprg=make\ -j8

" Awful hack that makes vim behave normally with ru keyboard layout
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

" Colemak ftw
noremap f e
inoremap <c-f> <c-e>
noremap p r
noremap <c-p> <c-r>
noremap g t
noremap <c-g> <c-t>
noremap j y
inoremap <c-j> <c-y>
noremap l u
noremap <c-l> <c-u>
noremap u i
noremap <c-u> <c-i>
noremap y o
noremap <c-y> <c-o>
noremap ; p
noremap r s
noremap <c-r> <c-s>
noremap s d
noremap <c-s> <c-d>
noremap t f
noremap <c-t> <c-f>
noremap d g
noremap dd gg
noremap <c-d> <c-g>
noremap n j
noremap <c-n> <c-j>
noremap e k
noremap <c-e> <c-k>
noremap i l
noremap <c-w>i <c-w>l
noremap <c-i> <c-l>
noremap o ;
noremap <c-o> <c-;>
noremap k n
noremap <c-k> <c-n>
noremap F E
noremap P R
noremap G T
noremap J Y
noremap L U
noremap U I
noremap Y O
noremap : P
noremap R S
noremap S D
noremap T F
noremap D G
noremap N J
noremap E K
noremap I L
noremap O q:i
noremap K N
