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

set nowrap

" For solarized color scheme - http://ethanschoonover.com/solarized
colorscheme solarized   " Choose the color scheme as solarized

" The following alternative may be less obtrusive.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
:nnoremap <Leader>wf :match<CR>
