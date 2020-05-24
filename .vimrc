
" Autoload vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif




" plugins configuration
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'

call plug#end()

" vim configs
set noshowmode
set number
set ttimeoutlen=50

" Cursor 'layout'
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

augroup myCmds
	au!
	autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

" netrw options
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
