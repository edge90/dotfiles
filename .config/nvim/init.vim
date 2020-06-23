
call plug#begin('~/.vim/plugged')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf for vim
Plug 'junegunn/fzf.vim'

" Start screen
Plug 'mhinz/vim-startify'

" Change to the root folder
Plug 'airblade/vim-rooter'

" Theme
Plug 'morhetz/gruvbox'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set termguicolors
colorscheme gruvbox

" Transparent background
highlight Normal guibg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>b :Buffers<CR>
map <Leader>f :Files<CR>
map <Leader>h :History<CR>
"map <Leader>g :GFiles<CR>
"map <Leader>s :GFiles?<CR>
"map <Leader>t :Tags<CR>
map <Leader>m :make<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hidden
set hidden

" Show absolute number
set number

" Show relative numbers
set relativenumber

" Show ruler
set ruler

" Always show the sign column
set signcolumn=yes
highlight clear SignColumn

" Show characters for whitespaces
set list

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab handling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" with for a actual tab char
set tabstop=4

" indent =, >, <
set shiftwidth=4

" insert spaces instead of tab
set expandtab

" Copy indent from current line
set autoindent

" File specific config
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader key
map <Space> <Leader>

" Use escape go to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

" Move to the next paragraph
nnoremap <C-j> }
nnoremap <C-k> {

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Conquer of Completion (coc)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Rename symbol
nmap <Leader>rn <Plug>(coc-rename)

" Format selected code
xmap <Leader>cf <Plug>(coc-format-selected)
nmap <Leader>cf <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <Leader>i :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc-git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" navigate chunks of current buffer
"nmap ga <Plug>(coc-git-prevchunk)
"nmap gb <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
