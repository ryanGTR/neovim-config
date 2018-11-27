
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
let g:deoplete#enable_at_startup = 1

"=============deoplete for clang====="
" Change clang binary path
call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')


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
