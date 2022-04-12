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
set relativenumber
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
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif

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
inoremap <A-j> <Esc>ja
inoremap <A-k> <Esc>ka
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

" Disable the default s key
"noremap s <nop>

" split the screens to up (horizontal), down(horizontal), left(vertical), right<vertical)
noremap <LEADER>sk :set nosplitbelow<CR>:split<CR>
noremap <LEADER>sj :set splitbelow<CR>:split<CR>
noremap <LEADER>sh :set nosplitright<CR>:vsplit<CR>
noremap <LEADER>sl :set splitright<CR>:vsplit<CR>

" Place the two screens up and down
noremap sv <C-w>t<C-w>H
" Place the two screens side by side
noremap sn <C-w>t<C-w>K

" Rotate screens
noremap srv <C-w>b<C-w>H
noremap srn <C-w>b<C-w>K

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize +5<CR>
noremap <right> :vertical resize -5<CR>

" ========================
" ==== Tab management ====
" ========================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tabe split<CR>
" Move around tabs with tn an ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmh and tml
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

" ============================
" ==== Other useful stuff ====
" ============================
" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>
noremap <C-'> ea<C-x>s
inoremap <C-'> <Esc>a<C-x>s
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

" ==== Compile function ====
noremap <A-r> :call CompileRunGcc()<CR><C-w>k
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
		exec "MarkdownPreviewToggle"
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

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}
"--enable-go

" highlight
"Plug 'cateduo/vsdark.nvim'
"Plug 'theniceboy/nvim-deus'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'joshdick/onedark.vim'

" If you want to have icons in your statusline choose one of these
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'vim-airline/vim-airline'
"Plug 'theniceboy/eleline.vim'

" Git
Plug 'airblade/vim-gitgutter'

Plug 'iamcco/markdown-preview.nvim'
Plug 'dhruvasagar/vim-table-mode'

Plug 'vimwiki/vimwiki'

"Plug 'preservim/nerdtree'
"Plug 'preservim/nerdtree' |
            "\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'

Plug 'majutsushi/tagbar'

Plug 'junegunn/goyo.vim'

Plug 'vim-python/python-syntax'

Plug 'Yggdroot/indentLine'

Plug 'kshenoy/vim-signature'

Plug 'vim-scripts/The-NERD-Commenter'

Plug 'tmhedberg/SimpylFold'

Plug 'hardcoreplayers/dashboard-nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'

" lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'mg979/vim-visual-multi'

call plug#end()
" ==================================== plugins end =================================

" ==== cateduo/vsdark.nvim ====

"set termguicolors
"let g:vsdark_style = "dark"
"color deus
color onedark


" ==== jackguo380/vim-lsp-cxx-highlight ====
"hi default link LspCxxHlSymFunction cxxFunction
"hi default link LspCxxHlSymFunctionParameter cxxParameter
"hi default link LspCxxHlSymFileVariableStatic cxxFileVariableStatic
"hi default link LspCxxHlSymStruct cxxStruct
"hi default link LspCxxHlSymStructField cxxStructField
"hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
"hi default link LspCxxHlSymClassField cxxStructField
"hi default link LspCxxHlSymEnum cxxEnum
"hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
"hi default link LspCxxHlSymVariable cxxVariable
"hi default link LspCxxHlSymMacro cxxMacro
"hi default link LspCxxHlSymEnumMember cxxEnumMember
"hi default link LspCxxHlSymParameter cxxParameter
"hi default link LspCxxHlSymClass cxxTypeAlias


" ==== dashboard-nvim ====
let g:mapleader="\<Space>"
let g:dashboard_default_executive = 'fzf'
let g:indentLine_fileTypeExclude = ['dashboard']
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>fw :DashboardFindWord<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_custom_header = [
  \'               ▄▄██████████▄▄             ',
  \'               ▀▀▀   ██   ▀▀▀             ',
  \'       ▄██▄   ▄▄████████████▄▄   ▄██▄     ',
  \'     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ',
  \'    ████▄ ▄███▀              ▀███▄ ▄████  ',
  \'   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ',
  \'   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ',
  \'    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ',
  \'       ███           ▀▀           ███     ',
  \'       ██████████████████████████████     ',
  \'   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ',
  \'   ███  ███ ███   ██    ██   ███▄███  ███ ',
  \'   ▀██▄████████   ██    ██   ████████▄██▀ ',
  \'    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ',
  \'     ▀███▄  ▀███████    ███████▀  ▄███▀   ',
  \'       ▀███    ▀▀██████████▀▀▀   ███▀     ',
  \'         ▀    ▄▄▄    ██    ▄▄▄    ▀       ',
  \'               ▀████████████▀             ',
\]


" ==== VimWiki ====
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ==== Tagbar ====
map <silent> T :TagbarOpenAutoClose<CR>

"" ==== MarkdownPreview ====
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

" ==== vim-table-mode ====
map <LEADER>tm :TableModeToggle<CR>

" ==== Python-syntax ====
let g:python_highlight_all = 1

" ==== Goyo ====
map <LEADER>gy :Goyo<CR>

" ==== vim-signature ====
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" ==== Undotree ====
noremap <A-U> :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 0
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

" ==== simpylFold ====
let g:SimpylFold_docstring_preview = 1
noremap <LEADER>o za

" ==== FZF ====
nnoremap <c-p> :FZF<CR>
" noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
" noremap <silent> <C-l> :Lines<CR>
noremap <silent> <C-w> :Buffers<CR>
noremap <leader>; :History:<CR>

" ==================== vim-visual-multi ====================
"let g:VM_theme             = 'iceblue'
"let g:VM_default_mappings = 0
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_maps['i']                  = ''
let g:VM_maps['I']                  = ''
let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'
let g:VM_maps['Find Next']          = ''
let g:VM_maps['Find Prev']          = ''
let g:VM_maps['Select Cursor Down'] = '<A-J>'
let g:VM_maps['Select Cursor up']   = '<A-K>'
let g:VM_maps['Remove Region']      = 'q'
let g:VM_maps['Skip Region']        = '<c-n>'
let g:VM_maps["Undo"]               = 'u'
let g:VM_maps["Redo"]               = 'U'

" ==== Far.vim ====
noremap <LEADER>ff :F  **/*<left><left><left><left><left>
let g:far#mapping = {
		\ "replace_undo" : ["u"],
		\ }


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


noremap \g :Git
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
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
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


" ==== vim-sneak ====
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
"map T <Plug>Sneak_T
map s <Plug>Sneak_s
map S <Plug>Sneak_S
let g:sneak#use_ic_scs = 1
highlight link sneak None


" ==== vim-easymotion ====
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1


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
nnoremap <silent> <LEADER>z :call <SID>show_documentation()<CR>


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
nnoremap <c-c> :CocCommand<CR>
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
nmap <silent> gi <Plug>(coc-implementation)
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














