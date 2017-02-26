" filetype plugin indent on is like a combination of these commands:
" filetype on
" filetype plugin on
" filetype indent on

filetype plugin indent on



" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab



colorscheme molokai



" To run a PHP file from within vim
" add mappings to run the current file through the PHP interpreter (using Ctrl-M)
" autocmd is specify commands to be executed automatically when reading or writing a file, when entering or leaving a buffer or window, and when exiting Vim.
" Filetype php ensures that filetype is php, if filetype is not php it will not run the command

:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>



" Use ctrl+s to save
" The first line says: pressing Ctrl-S within a document will perform a :w <enter> keyboard combination.
" The second line says: pressing Ctrl-S within a document while in 'insert' mode will escape to normal mode, perform a :w <enter, then press a to get back into insert mode. Your cursor may move during this event.
" You may notice that pressing Ctrl-S performs an 'XOFF' which stops commands from being received (If you are using ssh).
" To fix that, place these two commands in your ~/.bash_profile
" bind -r '\C-s'
" stty -ixon

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a


