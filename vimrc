" Bharath's vimrc

syntax enable           " Enable syntax coloring for various languages

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

set backspace=start     " Can delete back past start of edit
set backspace=indent    " Can delete back past auto-indenting
set backspace=eol       " Can delete back to the previous line

" For solarized color scheme - http://ethanschoonover.com/solarized
colorscheme solarized   " Choose the color scheme as solarized
