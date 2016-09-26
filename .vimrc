" The rest of this file is at /etc/vim/{vimrc, gvimrc}

" My settings
set hlsearch
filetype plugin indent on
set ts=4
set sw=4
set expandtab
set number

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
colorscheme PerfectDark

" My mappings
" Map capital W to save current buffer
nnoremap W :w<CR>
" Map ESC key to :noh
nnoremap <ESC> :noh<CR>

" Special plugins configurations
" unite
let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :e<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
nnoremap <space>r <Plug>(unite_restart)

" Ag
" --- type ° to search the word in all files in the current dir
nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag

" Text that passes last column (80th) will be colored
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" IndentLine
" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
