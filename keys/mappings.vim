let g:mapleader = "\<Space>"
" Better nav for omnicomplete
 inoremap <expr> <c-j> ("\<C-n>")
 inoremap <expr> <c-k> ("\<C-p>")
" inoremap <expr> <c-j> <C-n>
" inoremap <expr> <c-k> <C-p>
" inoremap <expr> <c-j> <C-n>
" inoremap <expr> <c-k> <C-p>



"
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap kj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap jj <Esc>

" Easy CAPS (case)
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
"nnoremap <C-s> :w<CR>
map <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"
" <TAB>: completion.
" inoremap <expr><TAB> pumvisible() ? "\<C-j>" : "\<TAB>"
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" prevent new line from becoming a comment if it is
nnoremap <leader>o o<Esc>^Da
nnoremap <leader>O O<Esc>^Da



" unhighlight search word 
map <silent><Esc>  :noh<CR>

"close all other buffers
"nnoremap <C-k>u :%bdelete|edit #|normal `"

"read file if it is modifed externally
" set autoread
"set autowrite

set ignorecase
set smartcase
nnoremap gll oconsole.log("LINE: <C-r>=line('.')<Esc>","")<Esc>F"i

nnoremap <leader>sv :source $MYVIMRC<CR>

function ClearRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in regs
    call setreg(r, @_)
  endfor
endfun

"noremap <C-k>u    :%bdelete|edit #|normal `"<CR>
noremap <C-k>u    :BufOnly <CR>

vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)




fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("bf","buffers")
"call SetupCommandAlias("cmm","Commentary")


" fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
