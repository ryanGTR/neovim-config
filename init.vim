let g:python_host_prog='/usr/local/bin/python2'
let g:python3_host_prog='/usr/local/bin/python3'


source ~/.config/nvim/general.vim
source ~/.config/nvim/dein.vim



"=============key setting============="

let mapleader = "\<space>"
let maplocalleader = ";"
noremap <silent><localleader>tb :TagbarToggle<cr>
nmap <localleader>e :NERDTreeToggle<cr>
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <C-p> :<C-u>FZF<CR>



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

