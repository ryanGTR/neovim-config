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


"==========ALE setting================"
let g:ale_linters = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'], 
\   'javascript': ['prettier', 'eslint'],
\   'html': ['prettier']
\}

let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_fix_on_save = 1

let g:lightline = {
  \'active': {
  \  'left': [
  \    ['mode', 'paste'],
  \    ['readonly', 'filename', 'modified', 'ale'],
  \  ]
  \},
  \'component_function': {
  \  'ale': 'ALEGetStatusLine'
  \}
  \ }

nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nmap <Leader>d :ALEDetail<CR>

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

