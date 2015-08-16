"" call pathogen to utilize the bundle directory
"call pathogen#infect()
"call pathogen#helptags()

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'vim-scripts/DrawIt'
Plug 'Lokaltog/vim-easymotion'
Plug 'vitapluvia/vim-gurl'
Plug 'osyo-manga/vim-over'
"Plug 'sjl/gundo.vim'
Plug 'tomtom/tlib_vim'
Plug 'kien/ctrlp.vim'
Plug 'othree/yajs.vim'
"Plug 'ervandew/supertab'
"Plug 'scrooloose/syntastic'

call plug#end()

" easy Motion Config:
let mapleader = ";"
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"autoindent tries to use current line indent level to set indent level of new lines
"set autoindent
"guess indent level of any new line based on the previous line
"set smartindent

"replace tabs with spaces
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"cursor briefly jumps to brace/parenthese/bracket match
set showmatch

"ignore case when searching
set ignorecase

"Use Swapfiles
set swapfile

"turn off search highlighting
set nohls

"search for text as you enter it
set incsearch

"set syntax to python by default
set syntax=python

"Automatically change directories to the current buffer's locaiton:
set autochdir

"set colorscheme and background
"set background=dark

"" colorscheme desert
"" colorscheme 256-grayvim 
"" colorscheme ir_black
"" colorscheme d8g_01 
"" colorscheme torte
"" colorscheme mustang
"" colorscheme 256-grayvim 
"" colorscheme busybee
"" colorscheme zellner
"" colorscheme wombat256mod
"" colorscheme default
"" colorscheme wombat256mod
"" colorscheme kkruby
"" colorscheme mustang
"" colorscheme gentooish 
"" 
"" colorscheme xoria256
"" colorscheme thor
"" colorscheme skittles_dark
"" colorscheme nazca
"" colorscheme fu
"" colorscheme colorful
"" colorscheme getafe
"" 
"" colorscheme jammy
"" colorscheme made_of_code
"" colorscheme impact
"" colorscheme BlackSea
"" colorscheme astronaut
"" colorscheme asu1dark

"" colorscheme AutumnLeaf
"" colorscheme basic

colorscheme blue
colorscheme redblack


"turn off wordwrap
set nowrap

"turn on line numbers
set number
"set nonumber

"highlight current line
set cursorline

"turn search highlighting on
set hlsearch

" highlighting lines longer than 80 chars
" automatically be warned for all files - turn * in to *.c,*.h,*.py
" http://vim.wikia.com/wiki/Highlight_text_beyond_80_columns
au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>80v', -1)
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)

" Clear the Match, by using matchdelete(num) 
"map <C-Space> :call clearmatches()
map <C-@> :call clearmatches()<cr>


" NERDtree Toggle
map <c-a-N> :NERDTree<cr>

" insert a newline
"map <C-j> <Esc>i<Enter><Esc>


" Map to Buffer Switching:
map <C-l> :bn<cr>
map <C-h> :bp<cr>

" Quick Cmds
map <leader>q :q<cr>
map <leader>w :w<cr>
map <leader>x :x<cr>
map <leader>b :bd<cr>

" taglist stuff
map <c-a-T> :TlistToggle<cr>
map ;T :!ctags .<cr>:TlistToggle<cr>:TlistUpdate<cr>

" vim session
" quick write session
map ;@ :mksession! ~/.current_vim_session.vim<cr>
" load  the session back
map ;$ :source ~/.current_vim_session.vim<cr>

" " options for the syntastic syntax checking plugin suite
" let g:syntastic_check_on_open=1 "check text on open as well as saved
" let g:syntastic_auto_jump=0     "do not jump to errors on open or save
" " put errors/warnings in the statusline
" let g:syntastic_stl_format='[%E{Err: %e}%B{, }%W{Warn: #%w}]'

" bike repairman shortcuts
map ;br :BikeRename<cr>
map ;be :BikeExtract<cr>

" sandbox shortcuts
map ;se :!sand edit % -n<cr>:e %<cr>
map ;sr :!sand revert %<cr>:e %<cr>


" Hex mappings 
"map ;hh :%!xxd<cr>
"map ;hj :%!xxd -r<cr>
"map ;hr :%!xxd -r<cr>
"map ;rr :%!xxd -r<cr>
"
"map ;kk :%!xxd<cr>
"map ;jj :%!xxd -r<cr>

" Powerline Setup 
set t_Co=256
let g:Powerline_symbols = 'fancy'
set encoding=utf-8 " Necessary to show Unicode glyphs
set fillchars+=stl:\ ,stlnc:\
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set backspace=2

syntax on

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" Setup Highlighting
" Pld6ffaf0018005f87b
" Ple7ffffff18005f87N
"hi Plc4ff0000f0585858b ctermfg=196 ctermbg=240 cterm=bold guifg=#ff0000 guibg=#585858 gui=bold
"hi Search ctermfg=196 ctermbg=240 cterm=bold guifg=#ff0000 guibg=#585858 gui=bold
"hi Search  xxx term=reverse ctermfg=0 ctermbg=11 gui=bold guifg=#2FB457 guibg=Plc4ff0000f0585858b 
"hi Comment ctermfg=DarkGrey guifg=DarkGrey

set ch=2

let g:over_enable_auto_nohlsearch = 1

" GVim Settings:
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    "set guifont=Menlo\ Regular:h14
    set guifont=Andele\ Mono\ 14
    colorscheme wombat256
    colorscheme strawimodo
    colorscheme bluechia
    colorscheme macvim
    colorscheme zmrok
    colorscheme bvemu
    colorscheme bocau
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

let @x='i\xllli\xllli\xllli\xhik$hhhik$hhhikddjjpkkkddjpkkddpkkjJxJxJxj0'

" Ctrl+W Toggle
nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

" Setup Swap Files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Search and Replace with ;fr

function! VisualFindAndReplace()
    :OverCommandLine%s/
    :w
endfunction
function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
    :w
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>


" Prevent VIM from using encryption when using ':x' (same as ':wq')
cnoremap <expr> X (getcmdtype() is# ':' && empty(getcmdline())) ? 'x' : 'X'

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Fast saving
nmap <leader>w :w!<cr>

" Fast quitting
nmap <leader>q :q<cr>

" Fast save + quit
nmap <leader>wq :wqa!<cr>

" Alt Fast save + quit
nmap <leader>x :x<cr>

" Git Status
nmap <leader>gs :Gstatus<cr>



" Colorschemes:
colorscheme redblack
colorscheme adaryn
colorscheme bclear
colorscheme asu1dark
colorscheme automation 
colorscheme basic
colorscheme blueprint
colorscheme bluez
colorscheme blazer
colorscheme bluechia
colorscheme blueprint
colorscheme automation
colorscheme candyman
colorscheme darkBlue
colorscheme blue
colorscheme delek
colorscheme pablo
colorscheme peachpuff

colorscheme yeller
colorscheme clue
colorscheme chela_light
colorscheme campfire
colorscheme candyman
colorscheme desert
colorscheme DevC++
colorscheme wargrey
colorscheme redblack
colorscheme wuye

set tabstop=2
set shiftwidth=2
set softtabstop=2
