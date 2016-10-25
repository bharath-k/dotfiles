" Bharath's vimrc

syntax enable           " Enable syntax coloring for various languages

set nocompatible        " be iMproved

set t_Co=256
set encoding=utf-8     " Necessary to show unicode glyphs

set autoread           " auto reload files that are changed outside of vim
set clipboard+=unnamed " copy across vim in different terminals

set number              " Shows line numbers

set ruler               " Shows line number, column and row at the bottom
                        " Useful when doing a search

set tabstop=4           " The width of a TAB is set to 4.
                        " Still it is a \t. It is just that
                        " Vim will interpret it to be having
                        " a width of 4.

set shiftwidth=4        " Indents will have a width of 4

set softtabstop=4       " Sets the number of columns for a TAB

set expandtab           " Expand TABs to spaces

set backspace=indent,eol,start  " start- Can delete back past start of edit
                                " indent -Can delete back past auto-indenting
                                " eol - Can delete back to the previous line

filetype off
filetype plugin indent on

set showbreak=↪                " indicate a line is the continuation of a
                               "  wrapped line

set hidden                     " Allow for hidden buffers



" For solarized color scheme - http://ethanschoonover.com/solarized
colorscheme solarized   " Choose the color scheme as solarized

" - To view all whitespace chars press \wn
" - To remove highlighting of whitespace characters press \wf
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
:nnoremap <Leader>wf :match<CR>

" To move across items in vim help documentation
nmap <silent> <RIGHT> : cnext<CR>
nmap <silent> <RIGHT><RIGHT> : cnfile<CR><C-G>
nmap <silent> <LEFT> : cprev<CR>
nmap <silent> <LEFT><LEFT> : cpfile<CR><C-G>

"============================================================================
" Make :help appear in a full-screen tab, instead of a window
"============================================================================

"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
    autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
    if &buftype == 'help'
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction
