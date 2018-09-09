set nocompatible              " be iMproved, required
set encoding=utf-8
call plug#begin('~/.local/share/nvim/plugged')
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Docker
Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
" Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'gko/vim-coloresque'
Plug 'jiangmiao/auto-pairs'
Plug 'posva/vim-vue'
Plug 'cakebaker/scss-syntax.vim'
" Quality of Life
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'plytophogy/vim-virtualenv'
Plug 'dhruvasagar/vim-dotoo'
Plug 'jceb/vim-orgmode'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Themes
Plug 'agreco/vim-citylights'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'noah/vim256-color'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf'
Plug 'jnurmine/Zenburn'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'jacoborus/tender.vim'
Plug 'gosukiwi/vim-atom-dark'
call plug#end()

" Indentation
" Add ability to see whitespace/eol
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" Tab Sizes
" By default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Python
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

" Ale
let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_virtualenv_dir_names = ['env', '.env', 'venv', 'virtualenv']
let b:ale_virtualenv_dir_names = ['env', '.env', 'venv', 'virtualenv']

" Airline
let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" Language Server
let g:LanguageClient_serverCommands = {
  \ 'javascript': ['~/.npm-global/bin/javascript-typescript-stdio'],
  \ 'javascript.jsx': ['javascript-typescript-stdio']
  \ }
" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

" Emmet Leader
let g:user_emmet_leader_key='<C-m>'

" vim-javascript
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" Preferences
set number

""""""" Mappings
nmap <C-b> :NERDTreeToggle<CR>

" Use tab completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Buffers
nmap <leader>l :ls<CR>:b<space>
nmap <leader>] :bn!<CR>
nmap <leader>[ :bp!<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bda :bd <C-a><CR>
nmap <leader>bds :b#<bar>bd#<CR>

" Fugitive
nmap <leader>gs :Gstatus<CR>

" FZF
nmap <leader>ff :Files<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fg :GFiles<CR>
nmap <leader>fc :Colors<CR>
nmap <leader>fa :Ag<CR>
nmap <leader>fr :Rg<CR>

" Whitespace Character Toggle
nmap <leader>s :set list!<CR>

" Themes
colorscheme atom-dark-256
