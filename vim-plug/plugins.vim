" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
"Plug 'scrooloose/NERDTree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'schickling/vim-bufonly'

"Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files

"Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

Plug 'wesQ3/vim-windowswap'
Plug 'lambdalisue/suda.vim'
Plug 'tpope/vim-surround'
" Plug 'Yggdroot/indentLine'
Plug 'adelarsq/vim-matchit'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'ap/vim-css-color'
Plug 'junegunn/rainbow_parentheses.vim'

" Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" change bindings to use rhubarb
" Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'liuchengxu/vim-which-key'
" find and replace multiple files
" Plug 'mhinz/vim-grepper'
" Plug 'brooth/far.vim'
" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
"Plug 'arcticicestudio/nord-vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif
