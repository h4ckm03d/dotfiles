" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/YankRing.vim'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'myusuf3/numbers.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'
Plug 'Raimondi/delimitMate'
Plug 'milkypostman/vim-togglelist'
Plug 'janko-m/vim-test'

" linter
Plug 'w0rp/ale'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Shougo/vimshell.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" autocompletion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" language support
Plug 'JulesWang/css.vim'
Plug 'b4b4r07/vim-hcl'
Plug 'cespare/vim-toml'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'jparise/vim-graphql'
Plug 'kovetskiy/sxhkd-vim'
Plug 'kylef/apiblueprint.vim'
Plug 'othree/html5.vim'
Plug 'subosito/nginx.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-markdown'
Plug 'udalov/kotlin-vim'
Plug 'LnL7/vim-nix'
Plug 'hjson/vim-hjson'
Plug 'dart-lang/dart-vim-plugin'
Plug 'posva/vim-vue'
Plug 'zchee/vim-vgo'

" golang
Plug 'fatih/vim-go', { 'tag': '*' }

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'keith/rspec.vim'

" javascript
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'

" typescript
Plug 'HerringtonDarkholme/yats.vim'

" color schemes
Plug 'morhetz/gruvbox'
Plug 'noahfrederick/vim-hemisu'

call plug#end()

" change leader
let mapleader = ","

" make alias
nnoremap ; :

" tab
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" stop arrows!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" no Ex mode
map Q gq

" toggle cursorline
nmap <silent><Leader>l :set cursorline!<CR>

" line number
set number

" highlight
set hlsearch

" folding
set nofoldenable

" listchars
set listchars=tab:→·
nmap <silent><Leader>k :set invlist<CR>

" transient files
set undodir=$HOME/.vim/tmp//
set backupdir=$HOME/.vim/tmp//
set directory=$HOME/.vim/tmp//

" undo
set undofile
set undolevels=1000
set undoreload=10000

" popup menu
set completeopt=menu

" window movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" stop mouse!
set mouse=

" do not copy selection to clipboard
set clipboard-=autoselect

"" plugins
" -----------------------------------------------------------
" vim-go
let g:go_disable_autoinstall = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" let g:go_fmt_options = {
" \ 'gofmt': '-s'
" \ }

nnoremap <leader>w :GoAlternate<CR>
nnoremap <silent><leader>r :GoRename<CR>

" nerdtree
nnoremap <leader>p :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40
let g:NERDTreeIgnore = ['\.test$', '\.out$']
let g:NERDTreeShowLineNumbers = 0

" ctrlp.vim
let g:ctrlp_map = '<leader>t'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/](vendor\/assets\/components|node_modules|coverage|tmp|log)$'
nnoremap <silent><leader>b :CtrlPBuffer<CR>

" fzf
nnoremap <silent><leader>f :FZF<CR>

" vim-airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'hybrid'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_splits = 0

" vim-airline unicode symbols
let g:airline_symbols = {}
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.crypt = 'δ'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '˧'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.whitespace = 'Ξ'

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" vim-gitgutter
let g:gitgutter_eager = 1

" YankRing.vim
let g:yankring_max_history = 1000
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
let g:yankring_history_dir = "~/.vim/tmp/"
let g:yankring_clipboard_monitor = 0
nnoremap <leader>y :YRShow<CR>

" ale
let g:ale_linters = {
\ 'go': ['go build', 'gofmt', 'golint'],
\ 'typescript': ['tslint', 'tsserver'],
\ 'javascript': ['eslint']
\ }
let g:ale_sign_error = 'EE'
let g:ale_sign_warning = 'WW'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%s [%linter%] [%severity%]'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap <silent><leader>e :ALEDetail<CR>

" numbers.vim
let g:enable_numbers = 0
nnoremap <silent><leader>n :NumbersToggle<CR>

" ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" ack.vim
let g:ackprg = 'rg --vimgrep'
nnoremap <leader>a :Ack!<space>

" vim-dispatch
nnoremap <leader>d :Dispatch<space>

" tagbar
nnoremap <leader>m :TagbarToggle<CR>

" colorizer
let g:colorizer_nomap = 1
nnoremap <leader>h :ColorToggle<CR>

" vimshell
let g:vimshell_prompt = "ツ "
nnoremap <leader>s :VimShell<CR>

" vim-test
function! DispatchStrategy(cmd) abort
  execute 'Dispatch! '.a:cmd
endfunction

let g:test#custom_strategies = {'dispatch!': function('DispatchStrategy')}
let g:test#strategy = {'nearest': 'basic', 'file': 'dispatch!', 'suite': 'dispatch!'}

nmap <silent><leader>, :TestNearest<CR>
nmap <silent><leader>. :TestFile<CR>
nmap <silent><leader>z :TestLast<CR>
nmap <silent><leader>v :TestVisit<CR>
nmap <silent><leader>x :TestSuite<CR>

" togglelist.vim
let g:toggle_list_no_mappings = 1
let g:toggle_list_copen_command = "Copen"
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

" gruvbox
let g:gruvbox_italic = 0
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0'

" molokai
let g:rehash256 = 1

"" terminal settings
" -----------------------------------------------------------
if !has('gui_running')
"  set scrolljump=8
endif

"" nvim settings
" -----------------------------------------------------------
if has('nvim')
  " nvim C-h quickfix: https://github.com/neovim/neovim/issues/2048
  nmap <BS> <C-W>h
endif

"" gui settings
" -----------------------------------------------------------
if has('gui_running')
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set guioptions-=e
  set guifont=Fira\ Code:h9
  set showtabline=2
endif

"" colorscheme
" -----------------------------------------------------------
set background=dark
colorscheme gruvbox

if $TERM_PROGRAM == 'Apple_Terminal'
  set background=light
  colorscheme hemisu
endif
