" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
" Author: @Polor-Bear

" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx

" =====================
" ==== Header File ====
" =====================
let &t_ut=''
set encoding=utf-8
let g:python_host_prog='/usr/bin/Python2/'
let g:python3_host_prog='/usr/bin/python3'
let g:ruby_host_prog='$/home/bear/.local/share/gem/ruby/3.0.0'

" =========================
" ==== Editor Behavior ====
" =========================
set number
"set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set notimeout
set termguicolors
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set foldenable
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let g:mkdp_browser = 'chromium'

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif

" ==================== Terminal Behaviors ====================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>

" ==================== Terminal Colors ====================
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" ========================
" ==== Basic Mappings ====
" ========================
" Set <LEADER> as <SPACE>, ; as :

let mapleader="\<Space>"
noremap <LEADER>; :

" Smart search and highlight
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

inoremap <C-t> <C-d>
inoremap <C-y> <C-t>
noremap n =

" set <Alt> + hjkl
inoremap <A-h> <Esc>ha
"inoremap <A-j> <Esc>ja
"inoremap <A-k> <Esc>ka
inoremap <A-l> <Esc>la
inoremap <A-w> <Esc>wa
inoremap <A-b> <Esc>ba
noremap <A-o> <A-o><Esc>
noremap <A-O> <A-O><Esc>

" Save & Quit
noremap Q :q<CR>
noremap <C-q> :q!<CR>
noremap <C-s> :w<CR>

" Source Vimrc
noremap <C-r> :source ~/.config/nvim/init.vim<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>rv :e .nvimrc<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y
nnoremap <A-p> "+p
vnoremap <A-p> "+p

" Indentation
nnoremap < <<
nnoremap > >>

" J/K keys for 5 times j/k (faster navigation)
noremap J 5j
noremap K 5k

" H key: go to the start of the line
noremap <silent> H ^
" L key: go to the end of the line
noremap <silent> L $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + j or k will move up/down the view port without moving the cursor
noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" Adjacent duplicate words
noremap <LEADER>fd /\(\<\w\+\>\)\_s*\1<CR>

" Space to Tab
nnoremap <LEADER>tt :%s/	/\t/g
vnoremap <LEADER>tt :s/	/\t/g

" Ctrl + z will Undo operation
noremap <C-z> <nop>
inoremap <C-z> <Esc>ua
inoremap <C-Z> <Esc><C-r>a
noremap U <C-r>

" ===========================
" ==== Window management ====
" ===========================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>l <C-w>l
noremap qf <C-w>o

" fold
noremap <LEADER>o za

" split the screens to up (horizontal), down(horizontal), left(vertical), right<vertical)
noremap <LEADER>sk :set nosplitbelow<CR>:split<CR>
noremap <LEADER>sj :set splitbelow<CR>:split<CR>
noremap <LEADER>sh :set nosplitright<CR>:vsplit<CR>
noremap <LEADER>sl :set splitright<CR>:vsplit<CR>

" Place the two screens up and down
noremap <LEADER>sv <C-w>t<C-w>H
" Place the two screens side by side
noremap <LEADER>sn <C-w>t<C-w>K

" Rotate screens
noremap <LEADER>srv <C-w>b<C-w>H
noremap <LEADER>srn <C-w>b<C-w>K

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>

" Resize splits with arrow keys
noremap <up> :res +1<CR>
noremap <down> :res -1<CR>
noremap <left> :vertical resize +1<CR>
noremap <right> :vertical resize -1<CR>

" ========================
" ==== Tab management ====
" ========================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tabe split<CR>
" Move around tabs with tn an ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
noremap <C-A-h> :-tabnext<CR>
noremap <C-A-l> :+tabnext<CR>
" Move the tabs with tmh and tml
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

" ============================
" ==== Other useful stuff ====
" ============================
" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>
noremap <C-p> ea<C-x>s
inoremap <C-p> <Esc>a<C-x>s
noremap gb evb
noremap <C-n> K

" Press space twice to jump to the next '<++>' and edit it
"noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" ===========================
" ==== Markdown Settings ====
" ===========================
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ;f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ;w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ;n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ;b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ;s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ;i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ;d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap <buffer> ;m - [ ] 
autocmd Filetype markdown inoremap <buffer> ;p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ;a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;l --------<Enter>
"autocmd Filetype markdown inoremap <buffer> | |<A-w>

" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
" Press ` to change case (instead of ~)
noremap ` ~
noremap <C-c> zz
" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h
" Call figlet
noremap tx :r !figlet 
" find and replace
noremap \s :%s//g<left><left>
" set wrap
noremap <LEADER>sw :set wrap<CR>
" press f10 to show hlgroup
" function! SynGroup()
" 	let l:s = synID(line('.'), col('.'), 1)
" 	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
" endfun
" map <F10> :call SynGroup()<CR>

" ==== Compile function ====
noremap <A-r> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
		if &filetype == 'c'
		set splitbelow
		:sp
		:res -10
		:term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		:sp
		:res -10
		:term g++ % -o %< && time ./%<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:res -10
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "InstantMarkdownPreview"
	endif
endfunc


noremap <C-A-n> :call MyCodeRunner()<CR><C-w>k
func! MyCodeRunner()
	exec "w"
	if &filetype == 'c'
		:sall
		set splitbelow
		:sp
		:res -10
		:term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		:sall
		set splitbelow
		:sp
		:res -10
		:term g++ % -o %< && time ./%<
	elseif &filetype == 'python'
		:sall
		set splitbelow
		:sp
		:res -10
		:term python3 %
	endif
endfunc

" =========================
" ====  plugins begin  ==============================================================
" =========================
call plug#begin('~/.config/nvim/plugged')

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}
"--enable-go

" highlight
"Plug 'cateduo/vsdark.nvim'
Plug 'joshdick/onedark.vim'

" If you want to have icons in your statusline choose one of these
Plug 'nvim-lualine/lualine.nvim'
Plug 'luochen1990/rainbow'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'vim-airline/vim-airline'
"Plug 'theniceboy/eleline.vim'

" Markdown
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Editor Enhancement
Plug 'petertriho/nvim-scrollbar'
Plug 'kevinhwang91/nvim-hlslens'

Plug 'mbbill/undotree'

Plug 'majutsushi/tagbar'

Plug 'junegunn/goyo.vim'
"Plug 'ron89/thesaurus_query.vim'

Plug 'Yggdroot/indentLine'

Plug 'kshenoy/vim-signature'


" Plug 'tmhedberg/SimpylFold'

Plug 'hardcoreplayers/dashboard-nvim'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ibhagwan/fzf-lua'
Plug 'kevinhwang91/rnvimr'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'theniceboy/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'alvan/vim-closetag'

Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'
Plug 'ggandor/lightspeed.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'b3nj5m1n/kommentary'
Plug 'theniceboy/antovim' " gs to switch
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
Plug 'junegunn/vim-peekaboo'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Python
Plug 'vim-python/python-syntax'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }


call plug#end()
" ==================================== plugins end =================================

" ==== cateduo/vsdark.nvim ====

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
	autocmd!
	let s:white = { "gui": "#abb2bf", "cterm": "145", "cterm16" : "7" }
	autocmd colorscheme * call onedark#set_highlight("normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup end
endif
color onedark

" ==================== vim-illuminate ====================
let g:illuminate_delay = 50
hi illuminatedword cterm=undercurl gui=undercurl

" ==================== nvim-treesitter ====================
lua <<EOF
require'nvim-treesitter.configs'.setup {
	-- one of "all", "language", or a list of languages
	highlight = {
		enable = true,			  -- false will disable the whole extension
		disable = { "rust" },  -- list of language that will be disabled
	},
	ensure_installed = {
		"c",
		"cpp",
		"dart",
		"java",
		"json",
		"html",
		"bash",
		"regex",
		"prisma",
		"typescript"},
}
EOF

" ==================== nvim-scrollbar ====================
lua <<EOF
require("scrollbar").setup()
require("scrollbar.handlers.search").setup()
require("scrollbar").setup({
	show = true,
	handle = {
		text = " ",
		color = "#928374",
		hide_if_all_visible = true,
	},
	marks = {
		Search = { color = "yellow" },
		Misc = { color = "purple" },
	},
	handlers = {
		diagnostic = true,
		search = true,
	},
})
EOF

" ==================== nvim-hlslens ====================
noremap <silent> = <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> - <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" ==== dashboard-nvim ====
let g:mapleader="\<Space>"
let g:dashboard_default_executive = 'fzf'
let g:indentLine_fileTypeExclude = ['dashboard', 'rnvimr']
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sL :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>fw :DashboardFindWord<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_custom_header = [
  \'			   ▄▄██████████▄▄			 ',
  \'			   ▀▀▀   ██   ▀▀▀			 ',
  \'	   ▄██▄   ▄▄████████████▄▄   ▄██▄	 ',
  \'	 ▄███▀  ▄████▀▀▀	▀▀▀████▄  ▀███▄   ',
  \'	████▄ ▄███▀			  ▀███▄ ▄████  ',
  \'   ███▀█████▀▄████▄	  ▄████▄▀█████▀███ ',
  \'   ██▀  ███▀ ██████	  ██████ ▀███  ▀██ ',
  \'	▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ',
  \'	   ███		   ▀▀		   ███	 ',
  \'	   ██████████████████████████████	 ',
  \'   ▄█  ▀██  ███   ██	██   ███  ██▀  █▄ ',
  \'   ███  ███ ███   ██	██   ███▄███  ███ ',
  \'   ▀██▄████████   ██	██   ████████▄██▀ ',
  \'	▀███▀ ▀████   ██	██   ████▀ ▀███▀  ',
  \'	 ▀███▄  ▀███████	███████▀  ▄███▀   ',
  \'	   ▀███	▀▀██████████▀▀▀   ███▀	 ',
  \'		 ▀	▄▄▄	██	▄▄▄	▀	   ',
  \'			   ▀████████████▀			 ',
\]


" ==== VimWiki ====
let g:vimwiki_list = [{'path': '~/vimwiki/',
					  \ 'syntax': 'markdown', 'ext': '.md'}]

" ==== Tagbar ====
map <silent> T :TagbarOpenAutoClose<CR>

" ==================== vim-instant-markdown ====================
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mermaid = 1
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = "chromium --new-window"
let g:instant_markdown_autoscroll = 1

" ==== vim-table-mode ====
map <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1

" ==================== vim-markdown-toc ====================
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'

" ==================== Bullets.vim ====================
let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]

" ==== Python-syntax ====
let g:python_highlight_all = 1

" ==== Goyo ====
map <LEADER>gy :Goyo<CR>

" ==== thesaurus ====
map <LEADER>th :ThesaurusQueryLookupCurrentWord<CR>

" ==================== tabular ====================
vmap ga :Tabularize /

" ==================== rainbow ====================
let g:rainbow_active = 1

" ==== vim-signature ====
let g:SignatureMap = {
		\ 'Leader'			 :  "m",
		\ 'PlaceNextMark'	  :  "m,",
		\ 'ToggleMarkAtLine'   :  "m.",
		\ 'PurgeMarksAtLine'   :  "dm-",
		\ 'DeleteMark'		 :  "dm",
		\ 'PurgeMarks'		 :  "dm/",
		\ 'PurgeMarkers'	   :  "dm?",
		\ 'GotoNextLineAlpha'  :  "m<LEADER>",
		\ 'GotoPrevLineAlpha'  :  "",
		\ 'GotoNextSpotAlpha'  :  "m<LEADER>",
		\ 'GotoPrevSpotAlpha'  :  "",
		\ 'GotoNextLineByPos'  :  "",
		\ 'GotoPrevLineByPos'  :  "",
		\ 'GotoNextSpotByPos'  :  "mn",
		\ 'GotoPrevSpotByPos'  :  "mp",
		\ 'GotoNextMarker'	 :  "",
		\ 'GotoPrevMarker'	 :  "",
		\ 'GotoNextMarkerAny'  :  "",
		\ 'GotoPrevMarkerAny'  :  "",
		\ 'ListLocalMarks'	 :  "m/",
		\ 'ListLocalMarkers'   :  "m?"
		\ }

" ==== Undotree ====
noremap <A-U> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> k <plug>UndotreeNextState
	nmap <buffer> j <plug>UndotreePreviousState
	nmap <buffer> K 5<plug>UndotreeNextState
	nmap <buffer> J 5<plug>UndotreePreviousState
endfunc

" ==== FZF ====
"nnoremap <c-p> :FZF<CR>
"" noremap <silent> <C-p> :Files<CR>
"noremap <silent> <C-f> :Rg<CR>
"noremap <silent> <C-h> :History<CR>
noremap <C-t> :BTags<CR>
"" noremap <silent> <C-u> :Lines<CR>
"noremap <silent> <C-w> :Buffers<CR>
"noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'left:45%'
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <C-A-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }


" ==================== fzf-lua ====================
noremap <silent> <C-p> :FzfLua files<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-h> :FzfLua oldfiles cwd=~<CR>
noremap <silent> <A-P> :FzfLua builtin<CR>
noremap <silent> <C-l> :FzfLua lines<CR>
"noremap <silent> <C-.> :FzfLua resume<CR>
noremap <silent> z= :FzfLua spell_suggest<CR>
noremap <silent> <C-w> :FzfLua buffers<CR>
noremap <leader>; :History:<CR>
augroup fzf_commands
  autocmd!
  autocmd FileType fzf tnoremap <silent> <buffer> <A-j> <down>
  autocmd FileType fzf tnoremap <silent> <buffer> <A-k> <up>
  autocmd FileType fzf tnoremap <silent> <buffer> <A-J> <down><down><down><down><down>
  autocmd FileType fzf tnoremap <silent> <buffer> <A-K> <up><up><up><up><up>
augroup end
lua <<EOF
require'fzf-lua'.setup {
	global_resume = true,
	global_resume_query = true,
	winopts = {
		height = 0.95,
		width = 0.95,
		preview = {
			scrollbar = 'float',
		},
		fullscreen = false,
		vertical	   = 'down:45%',	  -- up|down:size
		horizontal	 = 'right:60%',	 -- right|left:size
		hidden		 = 'nohidden',
		title = true,
	},
	keymap = {
		-- These override the default tables completely
		-- no need to set to `false` to disable a bind
		-- delete or modify is sufficient
		builtin = {
			["<c-f>"]	  = "toggle-fullscreen",
			["<c-r>"]	  = "toggle-preview-wrap",
			["<c-p>"]	  = "toggle-preview",
			["<c-y>"]	  = "preview-page-up",
			["<c-o>"]	  = "preview-page-down",
			["<S-left>"]   = "preview-page-reset",
		},
		fzf = {
			["esc"]		= "abort",
			["ctrl-h"]	 = "unix-line-discard",
			["ctrl-k"]	 = "half-page-down",
			["ctrl-b"]	 = "half-page-up",
			["ctrl-n"]	 = "beginning-of-line",
			["ctrl-a"]	 = "end-of-line",
			["alt-a"]	  = "toggle-all",
			["f3"]		 = "toggle-preview-wrap",
			["f4"]		 = "toggle-preview",
			["shift-up"]   = "preview-page-up",
			["shift-down"] = "preview-page-down",
			["ctrl-j"]	 = "down",
			["ctrl-k"]	 = "up",
		},
	},
  previewers = {
	cat = {
	  cmd			 = "cat",
	  args			= "--number",
	},
	bat = {
	  cmd			 = "bat",
	  args			= "--style=numbers,changes --color always",
	  theme		   = 'Coldark-Dark', -- bat preview theme (bat --list-themes)
	  config		  = nil,			-- nil uses $BAT_CONFIG_PATH
	},
	head = {
	  cmd			 = "head",
	  args			= nil,
	},
	git_diff = {
	  cmd_deleted	 = "git diff --color HEAD --",
	  cmd_modified	= "git diff --color HEAD",
	  cmd_untracked   = "git diff --color --no-index /dev/null",
	  -- pager		= "delta",	  -- if you have `delta` installed
	},
	man = {
	  cmd			 = "man -c %s | col -bx",
	},
	builtin = {
	  syntax		  = true,		 -- preview syntax highlight?
	  syntax_limit_l  = 0,			-- syntax limit (lines), 0=nolimit
	  syntax_limit_b  = 1024*1024,	-- syntax limit (bytes), 0=nolimit
	},
  },
  files = {
	-- previewer	  = "bat",		  -- uncomment to override previewer
										-- (name from 'previewers' table)
										-- set to 'false' to disable
	prompt			= 'Files❯ ',
	multiprocess	  = true,		   -- run command in a separate process
	git_icons		 = true,		   -- show git icons?
	file_icons		= true,		   -- show file icons?
	color_icons	   = true,		   -- colorize file|git icons
	-- executed command priority is 'cmd' (if exists)
	-- otherwise auto-detect prioritizes `fd`:`rg`:`find`
	-- default options are controlled by 'fd|rg|find|_opts'
	-- NOTE: 'find -printf' requires GNU find
	-- cmd			= "find . -type f -printf '%P\n'",
	find_opts		 = [[-type f -not -path '*/\.git/*' -printf '%P\n']],
	rg_opts		   = "--color=never --files --hidden --follow -g '!.git'",
	fd_opts		   = "--color=never --type f --hidden --follow --exclude .git",
  },
  buffers = {
	prompt			= 'Buffers❯ ',
	file_icons		= true,		 -- show file icons?
	color_icons	   = true,		 -- colorize file|git icons
	sort_lastused	 = true,		 -- sort buffers() by last used
  },
}
EOF

" ==================== fzf-gitignore ====================
noremap <LEADER>gi :FzfGitignore<CR>

" ==================== rnvimr ====================
let g:rnvimr_ex_enable = 1
" let g:rnvimr_bw_enable = 1
let g:rnvimr_pick_enable = 1
"let g:rnvimr_draw_border = 0
let g:rnvimr_enable_picker = 1
"let g:rnvimr_edit_cmd = 'drop'
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
highlight link RnvimrNormal CursorLine
nnoremap <silent> <LEADER>ra :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_action = {
			\ '<C-t>': 'NvimEdit tabedit',
			\ '<C-x>': 'NvimEdit split',
			\ '<C-v>': 'NvimEdit vsplit',
			\ 'gw': 'JumpNvimCwd',
			\ 'yw': 'EmitRangerCwd'
			\ }
let g:rnvimr_layout = { 'relative': 'editor',
			\ 'width': &columns,
			\ 'height': &lines,
			\ 'col': 0,
			\ 'row': 0,
			\ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 0.75, 'height': 0.75}]

" ==================== vim-visual-multi ====================
"let g:VM_theme			 = 'iceblue'
"let g:VM_default_mappings = 0
let g:VM_leader					 = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps					   = {}
let g:VM_maps['i']				  = ''
let g:VM_maps['I']				  = ''
let g:VM_maps['Find Under']		 = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'
let g:VM_maps['Find Next']		  = ''
let g:VM_maps['Find Prev']		  = ''
let g:VM_maps['Select Cursor Down'] = '<A-J>'
let g:VM_maps['Select Cursor Up']   = '<A-K>'
let g:VM_maps['Remove Region']	  = 'q'
let g:VM_maps['Skip Region']		= '<c-n>'
let g:VM_maps["Undo"]			   = 'u'
let g:VM_maps["Redo"]			   = 'U'

" ==================== GitGutter ====================
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '' "▎
let g:gitgutter_sign_modified = '柳' "░
let g:gitgutter_sign_removed = '' "▏
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap <C-G> :GitGutterPreviewHunk<CR>
nnoremap g- :GitGutterPrevHunk<CR>
nnoremap g= :GitGutterNextHunk<CR>

" ==================== lazygit.nvim ====================
noremap \g :Git
noremap <c-g> :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support
noremap <C-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>
"nnoremap <C-n> :tabe<CR>:-tabmove<CR>:term lazynpm<CR>


" ==== wildfire.vim ====
map <LEADER>wf <Plug>(wildfire-quick-select)


lua << END
-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg	   = '#202328',
  fg	   = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan	 = '#008080',
  darkblue = '#081633',
  green	= '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue	 = '#51afef',
  red	  = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
	return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
	return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
	local filepath = vim.fn.expand('%:p:h')
	local gitdir = vim.fn.finddir('.git', filepath .. ';')
	return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
	-- Disable sections and component separators
	component_separators = '',
	section_separators = '',
	theme = {
	  -- We are going to use lualine_c an lualine_x as left and
	  -- right section. Both are highlighted by c theme .  So we
	  -- are just setting default looks o statusline
	  normal = { c = { fg = colors.fg, bg = colors.bg } },
	  inactive = { c = { fg = colors.fg, bg = colors.bg } },
	},
  },
  sections = {
	-- these are to remove the defaults
	lualine_a = {},
	lualine_b = {},
	lualine_y = {},
	lualine_z = {},
	-- These will be filled later
	lualine_c = {},
	lualine_x = {},
  },
  inactive_sections = {
	-- these are to remove the defaults
	lualine_a = {},
	lualine_b = {},
	lualine_y = {},
	lualine_z = {},
	lualine_c = {},
	lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
	return '▊'
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
	return ''
  end,
  color = function()
	-- auto change color according to neovims mode
	local mode_color = {
	  n = colors.red,
	  i = colors.green,
	  v = colors.blue,
	  [''] = colors.blue,
	  V = colors.blue,
	  c = colors.magenta,
	  no = colors.red,
	  s = colors.orange,
	  S = colors.orange,
	  [''] = colors.orange,
	  ic = colors.yellow,
	  R = colors.violet,
	  Rv = colors.violet,
	  cv = colors.red,
	  ce = colors.red,
	  r = colors.cyan,
	  rm = colors.cyan,
	  ['r?'] = colors.cyan,
	  ['!'] = colors.red,
	  t = colors.red,
	}
	return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
	color_error = { fg = colors.red },
	color_warn = { fg = colors.yellow },
	color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
	return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
	local msg = 'No Active Lsp'
	local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
	  return msg
	end
	for _, client in ipairs(clients) do
	  local filetypes = client.config.filetypes
	  if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
		return client.name
	  end
	end
	return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird改
  symbols = { added = ' ', modified = '柳', removed = ' ' },
  diff_color = {
	added = { fg = colors.green },
	modified = { fg = colors.orange },
	removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
	return '▊'
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)
END


"" ==== vim-sneak ====
"map f <Plug>Sneak_f
"map F <Plug>Sneak_F
"map t <Plug>Sneak_t
""map T <Plug>Sneak_T
"map s <Plug>Sneak_s
"map S <Plug>Sneak_S
"let g:sneak#use_ic_scs = 1
"highlight link sneak None

" ==================== lightspeed ====================
nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"
" autocmd BufEnter * map <buffer> <nowait> { <Plug>Lightspeed_S
map <nowait> " <Plug>Lightspeed_omni_s
lua <<EOF
require'lightspeed'.setup {
  ignore_case = true,
  -- exit_after_idle_msecs = { unlabeled = 1000, labeled = nil },
  -- --- s/x ---
  -- jump_to_unique_chars = { safety_timeout = 400 },
  -- match_only_the_start_of_same_char_seqs = true,
  force_beacons_into_match_width = true,
  -- -- Display characters in a custom way in the highlighted matches.
  -- substitute_chars = { ['\r'] = '¬', },
  -- -- Leaving the appropriate list empty effectively disables "smart" mode,
  -- -- and forces auto-jump to be on or off.
  safe_labels= {"a", "s", "d", "f", "h", "j", "k", "o", "w", "f", "l", "y", "x", 'c', "v", "i", "g"},
  -- labels = {},
  special_keys = {
    next_match_group = '<space>',
    prev_match_group = '<tab>',
  },
}
EOF


" ==== vim-easymotion ====
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

" ==== kommentary ====
nmap <C-_> <Plug>kommentary_line_default
nmap <C-A-_> <Plug>kommentary_motion_default
xmap <C-_> <Plug>kommentary_visual_default

" ==== auto-pairs ====
let g:AutoPairsShortcutToggle = "false"

" ==== coc.nvim ====
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-docker',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-java',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-omnisharp',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tailwindcss',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank',
	\ 'https://github.com/rodrigore/coc-tailwind-intellisense']

set shortmess+=c
set updatetime=100
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-0> coc#refresh()
nnoremap <silent> gh :call <SID>show_documentation()<CR>


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
	execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
	call CocActionAsync('doHover')
  else
	execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" set runtimepath^=~/.config/nvim/coc-extensions/coc-flutter-tools/
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
" let $NVIM_COC_LOG_LEVEL = 'debug'
" let $NVIM_COC_LOG_FILE = '/Users/david/Desktop/log.txt'

nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <LEADER>qf <Plug>(coc-fix-current)
nnoremap <LEADER>cc :CocCommand<CR>
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Text Objects
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <leader>a  :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" coctodolist
" nnoremap <leader>tn :CocCommand todolist.create<CR>
" nnoremap <leader>tl :CocList todolist<CR>
" nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Polor Bear'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc


function! s:generate_compile_commands()
  if empty(glob('CMakeLists.txt'))
	echo "Can't find CMakeLists.txt"
	return
  endif
  if empty(glob('.vscode'))
	execute 'silent !mkdir .vscode'
  endif
  execute '!cmake -DCMAKE_BUILD_TYPE=debug
	  \ -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B .vscode'
endfunction
command! -nargs=0 Gcmake :call s:generate_compile_commands()

" ==== Antovim ====
noremap <A-f> :Antovim<CR>

" ==== vimspector ====
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
" noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
"sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
"sign define vimspectorPC text=🔶 texthl=SpellBad


" ==== puremourning/vimspector ====
"let g:vimspector_enable_mappings = 'HUMAN'

"function! s:generate_vimspector_conf()
  "if empty(glob( '.vimspector.json' ))
	"if &filetype == 'c' || 'cpp' 
	  "!cp ~/.config/nvim/vimspector_conf/c.json ./.vimspector.json
	"elseif &filetype == 'python'
	  "!cp ~/.config/nvim/vimspector_conf/python.json ./.vimspector.json
	"endif
  "endif
  "e .vimspector.json
"endfunction

"command! -nargs=0 Gvimspector :call s:generate_vimspector_conf()

"nmap <Leader>v <Plug>VimspectorBalloonEval
"xmap <Leader>v <Plug>vimspectorBalloonEval














