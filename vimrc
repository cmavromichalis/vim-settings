" set up vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
"Plug 'sheerun/vim-polyglot' https://github.com/majutsushi/tagbar/issues/509
Plug 'junegunn/fzf', { 'dir': '~/.vim/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
" initialize plugin system
call plug#end()

" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'govet']
let g:syntastic_ignore_files = ['\.s$']
let g:syntastic_always_populate_loc_list = 1

" Go-vim plugin
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_fmt_command = 'goimports'
let g:go_list_type = 'quickfix'

" vim-go error suppression
let g:go_fmt_fail_silently = 0

" tagbar settings
autocmd VimEnter * nested :TagbarOpen

" vim-airline settings
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

" Syntax highlighting
syntax enable

" loclist settings
map <Leader>c :lclose<CR>
map <Leader>o :lopen<CR>

" fzf settings
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>

" customize fzf colors to match color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable line numbers
set number
" Wrap lines at 80 characters
set textwidth=80
" Set tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab smarttab
" Turn on color syntax highlighting
syntax on
filetype plugin indent on

" kill trailing whitespace
augroup TrailingWhitespace
    autocmd FileType c,make,markdown,sh,vim
    \ autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" NERDTree settings
augroup NERDTree
    autocmd vimenter * NERDTree | wincmd p
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

map <Leader>t :NERDTreeToggle<CR>

" mappings for switching buffers
map <Leader>n :bn<CR>
map <Leader>p :bp<CR>

set fillchars=""

" color scheme overrides
augroup ColorSchemeOverrides
    autocmd ColorScheme *
    \   highlight Statement     cterm=bold
    \ | highlight Keyword       cterm=bold
    \ | highlight Exception     cterm=bold
    \ | highlight MatchParen    cterm=bold
augroup END

set t_Co=256
silent! colo molokai

