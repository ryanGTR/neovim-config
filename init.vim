let g:python_host_prog='/usr/local/bin/python2'
let g:python3_host_prog='/usr/local/bin/python3'


source ~/.config/nvim/general.vim
source ~/.config/nvim/dein.vim



"=============key setting============="

let mapleader = "\<space>"
let maplocalleader = ";"


"============NERETree setting========="
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
nmap <localleader>e :NERDTreeToggle<cr>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1

"=============deoplete==========="
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"=============deoplete for clang====="
" Change clang binary path
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')


"=============theme setting==========="
syntax on 
colorscheme dracula
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost init.vim source %
augroup END

