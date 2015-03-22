call pathogen#infect()
let mapleader="\\"
let maplocalleader="_"
" few filetype mappings
au BufNewFile,BufRead *.j setf objj
au BufNewFile,BufRead *.rhtml set syn=eruby
au BufNewFile,BufRead *.rng setf xml
au BufNewFile,BufRead *.as setf actionscript
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.tt setf html
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

au BufNewFile,BufRead *.js iabbrev fun "function () {}"

" json pretty print 
nnoremap <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" save and sync to vim using lsync script with \s
nnoremap <silent><leader>s <Esc>:w<CR><Esc>:!lsync<CR><CR>

" wrap current word in single or double quote with \q'
" remove either quotes around word with \qd 
nnoremap <Leader>q" gewi"<Esc>ea"<Esc>
nnoremap <Leader>q' gewi'<Esc>ea'<Esc>
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 30
nnoremap <F3> :TlistToggle<cr>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <S-F2> :NERDTreeFind<CR>
" let us easily clear the last search for readabilty (hl is on)
nnoremap <C-k> :noh<CR>
nnoremap <D-F> :Ack<CR>
nnoremap <Leader>rel :set relativenumbere<CR>
nnoremap <Leader>num :set number!<CR>
nnoremap - ddkP
nnoremap + ddp
inoremap <c-u> <esc>viwUwi
nnoremap <c-u> viwUw
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>l xp


" sudo save a file with :w11
cmap w!! w !sudo dd of=%

" Unbind the cursor keys in insert, normal and visual modes.
" for prefix in ['i', 'n', 'v']
"  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"   exe prefix . "noremap " . key . " <Nop>"
 "endfor
"endfor

"toggles whether or not the current window is automatically zoomed
function! ToggleMaxWins()
  if exists('g:windowMax')
    au! maxCurrWin
    wincmd =
    unlet g:windowMax
  else
    augroup maxCurrWin
        " au BufEnter * wincmd _ | wincmd |
        "
        " only max it vertically
        au! WinEnter * wincmd _
    augroup END
    do maxCurrWin WinEnter
    let g:windowMax=1
  endif
endfunction
nnoremap <F4> :call ToggleMaxWins()<CR>

" loads of stuff that probably doesn't make much sense
filetype indent on
filetype on
filetype plugin on
set nocompatible
set expandtab
set hlsearch
set ignorecase
set incsearch
set noautoindent
set nowrap
set showmode
set ruler
set showcmd
set showmatch
set smartcase
set smartindent
set spelllang=en
set mouse=a
set sw=2
set ts=2
set vb
set wildmenu
syntax enable
" these lines set whole word wrapping
set formatoptions=l
set lbr
set nofoldenable    " disable folding
:set spell spelllang=en

" macvim specific
if has("gui_running")
   set guioptions-=r
   set guioptions-=L
   set guioptions-=T
   set guifont=Consolas:h14
else
   set t_Co=256 
endif

" failed attempt to use ctags on a regular basis
set tags=tags

" lanaguage aware autocomplete using ctrl+x, ctrl+p
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript normal zR
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


colorscheme solarized
set background=light

let g:ctrlp_working_path_mode = 0

set term=xterm-256color
" makes airline show up
set laststatus=2
let g:airline_powerline_fonts=1
let airline_powerline_fonts=1
set encoding=utf-8
