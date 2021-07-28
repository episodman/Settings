syntax on

set noshowmatch
set guicursor=
set relativenumber
set hlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set ignorecase
" set mouse=a
" set spell
" set spelllang=en_us
set backspace=indent,eol,start
set t_Co=256
"set t_Co=16
set nowrap
" set ttimeoutlen=0



"Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=darkgrey
autocmd ColorScheme * highlight LineNr  ctermfg=Yellow guifg=Yellow " Override LineNr
" autocmd ColorScheme * highlight LineNr  ctermfg=Black guifg=Black " Override LineNr
autocmd ColorScheme * highlight CursorLineNr  ctermfg=White guifg=White " Override CursorLineNr
" autocmd ColorScheme * highlight CursorLineNr  ctermfg=Blue guifg=Blue " Override CursorLineNr
" autocmd ColorScheme * highlight Comment cterm=italic gui=italic
autocmd ColorScheme * highlight Comment gui=italic
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'pwntester/octo.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'sharkdp/bat'

"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
"
" Theme
Plug 'ackyshake/Spacegray.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'habamax/vim-polar'
Plug 'joshdick/onedark.vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'gruvbox-community/gruvbox'
" Plug 'sainnhe/gruvbox-material'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'herrbischoff/cobalt2.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'morhetz/gruvbox'
" Plug 'crusoexia/vim-monokai'
" Plug 'phanviet/vim-monokai-pro'
Plug 'psliwka/vim-smoothie'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'preservim/nerdtree'
Plug 'rainux/vim-desert-warm-256'
Plug 'rakr/vim-one'
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'blueyed/vim-diminactive'
"Plug 'istib/vifm.vim'
"
"
"5.0
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'neovim/nvim-lspconfig'
" Plug 'kabouzeid/nvim-lspinstall'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/playground'
Plug 'glepnir/galaxyline.nvim'
call plug#end()

let g:coc_node_path = '/usr/bin/nodejs'
" let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_contrast_light= 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" --- The Greatest plugin of all time.  I am not bias
let g:vim_be_good_floating = 1

" --- ctrlp
set wildignore+=*/tmp/*,*.so,*\\tmp\\*,*.swp,*.zip,*.exe
set wildignore+=build*/**,oe*/**,*env*/**,env/**,venv3/**,env/*,venv3/*,tags

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
" --- coc
let g:coc_disable_startup_warning = 1
" --- vim python
let python_highlight_all = 1
" let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
let g:autopep8_max_line_length=79
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

"  --- bracket rainbow
" let g:rainbow_ = 1



" --- netrw
let g:netrw_liststyle=3
let g:netrw_altv = 1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
"colorscheme embark
"colorscheme ayu
"set termguicolors     " enable true colors support
"let ayucolor="dark" " for mirage version of theme
" IndentLine {{
" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" let g:smoothie_enabled = 1
" }}
" colorscheme hybrid_material
let g:hybrid_material_enable_italic = 1
let g:gruvbox_enable_italic = 1
colorscheme gruvbox


let g:spacegray_underline_search = 1
let g:spacegray_use_italics = 1
" let g:spacegray_low_contrast = 1
" colorscheme spacegray
"yyp" colorscheme nord
"colorscheme PaperColor
" colorscheme cobalt2
" colorscheme material
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
" if (has('nvim'))
"   let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
" endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
" if (has('termguicolors'))
"   set termguicolors
" endif
"
" colorscheme onedark
" if (has("autocmd"))
"   augroup colorextend
"     autocmd!
"     " Make `Function`s bold in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
"     " Override the `Statement` foreground color in 256-color mode
"     autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
"     " Override the `Identifier` background color in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
"   augroup END
" endif

" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

" augroup colorscheme_change | au!
"     au ColorScheme polar hi Comment gui=italic cterm=italic
" augroup END
" colorscheme one
" colorscheme polar
" colorscheme molokai
"colorscheme one-monokai
"colorscheme palenight
"colorscheme solarized
"colorscheme desert256
" colorscheme dracula
" colorscheme monokai
" colorscheme onehalfdark
" colorscheme onehalflight
set background=dark
" set background=light
let g:one_termcolors=16
let g:one_term_italic=1
let g:one_allow_italics = 1
let g:desert256_termcolors=256
let g:desert256_term_italic=0
"let g:monokai_term_italic = 1
"let g:monokai_gui_italic = 1
let g:solarized_termcolors=256
let g:solarized_term_italic=1
let g:dracula_termcolors=256
let g:dracula_term_italic=1
let g:dracula_allow_italics = 1
let g:gruvbox_termcolors=256
let g:gruvbox_term_italic=1
let g:gruvbox_allow_italics = 1
let g:onedark_termcolors=256
let g:onedark_term_italic=1
let g:molokai_termcolors=256
let g:molokai_term_italic=1
let g:molokai_original = 1
"let g:rehash256 = 1
"let g:airline_theme = "palenight"
"let g:airline_theme = "gruvbox"
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
    let g:rg_derive_root='true'
endif

" Markdown
let g:mkdp_path_to_chrome = "/usr/bin/firefox"
let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25


" FZF
let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'file {}'"
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
" let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
" --preview bat --color=always --style=numbers --line-range=:500 {}'
" Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

"nnoremap <Leader><CR> :so ~/.vimrc<CR>
"nnoremap <Leader><CR> :so ~/config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nmap <F9> :Tlist<CR>
nmap <silent> <F9> :Rgrep<CR>
nnoremap <leader>settag :!ctags -R --exclude=oe-logs --exclude=oe-workdir --exclude=env --exclude=venv3<CR>
nnoremap <leader>sync :set tags=$PWD/tags<CR>
nnoremap <F5> :!ctags -R --exclude=oe-logs --exclude=oe-workdir --exclude=env --exclude=venv3<CR>
nnoremap <F6> :set tags=$PWD/tags<CR>
nnoremap <F3> :vimgrep /<C-r><C-w>/gj **/*<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"

autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
"autocmd FileType python set equalprg=autopep8\ -

"set tags=/home/jungyongchoi/oe-server2/code_gld4tv/audiod-pro/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/audiod-pro/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/audiooutputd-pro/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/umi-pro/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/legacy-broadcast/tags,/home/jungyongchoi/unittest/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/arccontroller/tags
" set tags+=/home/jungyongchoi/oe-server2/code_jcl4tv/**/tags
" set tags+=/home/jungyongchoi/oe-server2/meta-lg-webos/automation_ccc/tags
" Vim with me
" nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
" nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

vnoremap X "_d
inoremap <C-c> <esc>
inoremap ii <esc>

function! s:check_back_space() abort
 let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun


" Telescope
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

noremap <C-c> "+y
noremap yy "+yy
noremap y "+y
noremap Y "+y$
noremap x "+x
noremap D "+D
noremap dd "+dd
set clipboard=unnamedplus
set relativenumber

" autocmd BufWritePre <buffer> %s/\s\+$//e
" ---- gnome
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"command! -bang -nargs=* Rg
  "\ call fzf#vim#grep(
  "\   'rg --column --line-number --no-heading --color=always --colors "path:fg:190,220,255" --colors "line:fg:128,128,128" --smart-case '.shellescape(<q-args>), 1, { 'options': '--color hl:123,hl+:222' }, 0)
"command! -bang -nargs=* Rg
      "\ call fzf#vim#grep(
      "\   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      "\   <bang>0 ? fzf#vim#with_preview('up:60%')
      "\           : fzf#vim#with_preview('right:50%:hidden', '?'),
      "\   <bang>0)
" command! -bang -nargs=* Rg
"    \ call fzf#vim#grep('rg --smart-case --line-number --no-heading
"    \  --color=always --colors "path:fg:93,169,245" --colors
"    \  "line:fg:128,128,128" --colors "match:fg:195,232,141" --no-hidden
"    \  --ignore-case '.shellescape(<q-args>),
"    \ 0,
"    \ fzf#vim#with_preview({'options': '-e --delimiter : --nth 3..'}),
"    \ <bang>0)
"
if has('autocmd')
    augroup coloroverride
        autocmd!
        autocmd ColorScheme * highlight LineNr  ctermfg=DarkGrey guifg=DarkGrey " Override LineNr
        autocmd ColorScheme * highlight CursorLineNr  ctermfg=White guifg=White " Override CursorLineNr
    augroup END
endif

" Correct RGB escape codes for vim inside tmux
if !has('nvim') && $TERM ==# 'screen-16color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

"autocmd BufWritePre *.json :%!python -m json.tool
"autocmd FileType json BufWritePre *.json :%!python -m json.tool

autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
autocmd FileType cpp setlocal commentstring=//\ %s

autocmd BufWritePre * :call TrimWhitespace()
"autocmd BufWritePre * :%s///e
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWritePost plugins.lua PackerCompile


" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <C-p> <cmd>Telescope git_files<cr>
" Using lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
let g:completion_enable_auto_popup = 1
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_trigger_character = ['.', '::']

" let g:completion_matching_ignore_case = 1
" -------------------- LSP ---------------------------------
lua << EOF
--   local nvim_lsp = require('lspconfig')
--
--   local on_attach = function(client, bufnr)
--     require('completion').on_attach()
--
--     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--
--     buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--     -- Mappings
--     local opts = { noremap=true, silent=true }
--     buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--     buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--     buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--     buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--     buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--     buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--     buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--     buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--     buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--
--     -- Set some keybinds conditional on server capabilities
--     if client.resolved_capabilities.document_formatting then
--         buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--     elseif client.resolved_capabilities.document_range_formatting then
--         buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--     end
--
--     -- Set autocommands conditional on server_capabilities
--     if client.resolved_capabilities.document_highlight then
--         require('lspconfig').util.nvim_multiline_command [[
--         :hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
--         :hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
--         :hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
--         augroup lsp_document_highlight
--             autocmd!
--             autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--             autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--         augroup END
--         ]]
--     end
--   end
--
--   local servers = {'pyright', 'gopls', 'rust_analyzer', 'ccls'}
--   for _, lsp in ipairs(servers) do
--     nvim_lsp[lsp].setup {
--       on_attach = on_attach,
--     }
--   end
EOF

" Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" -------------------- LSP ---------------------------------

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

lua <<EOF
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}

-- Telescope
-- require('telescope').setup {
--   defaults = {
--     mappings = {
--       i = {
--         ["<C-u>"] = false,
--         ["<C-d>"] = false,
--       },
--     },
--     generic_sorter =  require'telescope.sorters'.get_fzy_sorter,
--     file_sorter =  require'telescope.sorters'.get_fzy_sorter,
--   }
-- }


--         ["<C-w>"] = actions.send_selected_to_qflist,
--         ["<C-u>"] = false,
--         ["<C-d>"] = false,
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    --prompt_prefix = '>',
    prompt_prefix = '🔍',
    color_devicons = true,

    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    set_env = { ['COLORTERM'] = 'truecolor' },
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = {
         preview_width = 0.6,
         width = 0.9,
         prompt_position = 'top',
    },

    mappings = {
      i = {
        ["<C-q>"] = actions.send_to_qflist,
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-x>"] = false,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-c>"] = actions.close,
        ["<Esc>"] = actions.close,
      },
      n = {
        ["<C-q>"] = actions.send_to_qflist,
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-x>"] = false,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-c>"] = actions.close,
        ["<Esc>"] = actions.close
      }
    },
    generic_sorter =  require'telescope.sorters'.get_fzy_sorter,
    file_sorter =  require'telescope.sorters'.get_fzy_sorter,
  },
  extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = false, -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                     -- the default case_mode is "smart_case"
      }
  }
}

require('telescope').load_extension('fzf')
-- Add leader shortcuts
vim.api.nvim_set_keymap('n', '<leader>pf', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], { noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<C-p>', [[<cmd>lua require('telescope.builtin').git_files({previewer = false})<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-p>', [[<cmd>lua require('telescope.builtin').git_files()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>pb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>pw', [[<cmd>lua require('telescope.builtin').grep_string{ search = vim.fn.expand("<cword>")}<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ps', [[<cmd>lua require('telescope.builtin').grep_string{ search = vim.fn.input("Grep String:")}<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>o', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<cr>]], { noremap = true, silent = true})
EOF
