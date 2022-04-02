let mapleader=","
filetype on
syntax on
nmap <Leader>w :w<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>e :wq<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap jj <ESC>
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set incsearch
set number
set relativenumber
set ignorecase
set wildmenu
set nocompatible
set background=dark
set fileformats=unix,dos
set fileformat=unix
set nowrap
set fileencoding=UTF-8
set scrolloff=20
set list lcs=tab:\┆\
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set tags=tags
set autochdir
lua require('plugins')
lua require('plugin-config/nvim-treesitter')
call plug#begin('~/.config/nvim/plugged')
" 主题theme类插件
Plug 'glepnir/zephyr-nvim'
Plug 'ajmwagar/vim-deus'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'npxbr/gruvbox.nvim'
Plug 'sainnhe/forest-night'
Plug 'srcery-colors/srcery-vim'
Plug 'hardcoreplayers/oceanic-material'
Plug 'chuling/ci_dark'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhartington/oceanic-next'
Plug '986299679/space-vim-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'
Plug 'flrnd/candid.vim'
Plug 'jaredgorski/spacecamp'
Plug 'bluz71/vim-moonfly-colors'
Plug 'cormacrelf/vim-colors-github'
Plug 'arzg/vim-colors-xcode'
Plug 'sainnhe/sonokai'
Plug 'sonph/onehalf'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/edge'
Plug 'reedes/vim-colors-pencil'
Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'joshdick/onedark.vim'

"图标美化
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"欢迎界面
Plug 'mhinz/vim-startify'

" 对称括号加颜色
Plug 'frazrepo/vim-rainbow'

"状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"将一段文字用符号包裹起来
Plug 'tpope/vim-surround'

"智能选择一段代码
Plug 'gcmt/wildfire.vim'

"语法高亮
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"浮动终端
Plug 'voldikss/vim-floaterm'

"代码符号对齐
Plug 'junegunn/vim-easy-align'

"代码注释
Plug 'preservim/nerdcommenter'

"代码格式化
Plug 'Chiel92/vim-autoformat'

"vim写markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"高亮
Plug 'cateduo/vsdark.nvim'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"语法检查
Plug 'dense-analysis/ale'
call plug#end()

" 对称括号加颜色 设置
let g:rainbow_active = 1

" 美化相关基本配置
" 高亮当前行列
set cursorline
set colorcolumn=80
" 光标
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20
" 搜索高亮
set incsearch
" 高亮匹配内容
set hlsearch
set list
" 只有set list下面的才会起作用
if &list
    set listchars=tab:\|\→·,nbsp:⣿,extends:»,precedes:«
    set listchars+=eol:¬
    set listchars+=trail:·
    " set listchars+=space:␣
endif
" 搜索高亮颜色
hi Search ctermfg=17 ctermbg=190 guifg=#000000 guibg=#ffff00

" 设置弹出框大小, 0 则有多少显示多少
set pumheight=20
"endif
" 主题选择
let g:one_allow_italics = 1
silent! colorscheme edge

" 设置欢迎词
let g:startify_custom_header = [
      \'+----------------------------------------------------------------------+',
      \'|     	  Welcome!My god father!                                       |',
      \'|         This is Neovim from Papa Liu!                                |',    
      \'|                                                                      |',
      \'|                       +++              +++                           |',
      \'|                      +   +            +   +                          |',
      \'|                     +     +          +     +                         |',
      \'|                                                                      |',
      \'|                                                                      |',
      \'|                              +   +                                   |',
      \'|                               + +                                    |',
      \'|                                                                      |',
      \'|                                                                      |',
      \'|                                        https://github.com/LiuShi-123 |',
      \'+----------------------------------------------------------------------+',
      \]

" nerdtree设置
map <leader>e :NERDTreeMirror<CR>
map <leader>e :NERDTreeToggle<CR>

"状态栏
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <TAB> :bn<CR>
nnoremap <LEADER><TAB> :bp<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"浮动终端
let g:floaterm_keymap_new    = '<LEADER>ft'
let g:floaterm_keymap_prev   = '<LEADER>pt'
let g:floaterm_keymap_next   = '<LEADEr>nt'
let g:floaterm_keymap_toggle = '<LEADER>ff'

"代码符号对齐
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"代码注释
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"代码格式化
noremap <LEADER>af :Autoformat<CR>
let g:autoformat_verbosemode=1

"vim写markdown
let g:vim_markdown_folding_disabled = 1  "不折叠显示，默认是折叠显示，看个人习惯
let g:vim_markdown_override_foldtext = 0  
let g:vim_markdown_folding_level = 6    "可折叠的级数，对应md的标题级别
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_frontmatter=1
syntax on     #必须设置，否则md标记不能高亮显示
nmap <LEADER>mp <Plug>MarkdownPreview        " for normal mode
imap <LEADER>mp <Plug>MarkdownPreview        " for insert mode
nmap <LEADER>smp <Plug>StopMarkdownPreview    " for normal mode
imap <LEADER>smp <Plug>StopMarkdownPreview    " for insert mode

"实时预览markdown
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

"COC
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-html',
      \ 'coc-vimlsp',
      \ 'coc-cmake',
      \ 'coc-highlight',
      \ 'coc-pyright',
      \ 'coc-rust-analyzer',
      \ 'coc-diagnostic']

set signcolumn=number
" <TAB> to select candidate forward or
" pump completion candidate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" <s-TAB> to select candidate backward
inoremap <expr><s-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.')-1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" <CR> to comfirm selected candidate
" only when there's selected complete item
if exists('*complete_info')
  inoremap <silent><expr> <CR> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if(index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" highlight link CocHighlightText Visual
" autocmd CursorHold * silent call CocActionAsync('highlight')   " TODO

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" diagnostic info
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<CR>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <LEADER>qf <Plug>(coc-fix-current)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" statusline support
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}  "TODO
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

"高亮
hi default link LspCxxHlSymFunction cxxFunction
hi default link LspCxxHlSymFunctionParameter cxxParameter
hi default link LspCxxHlSymFileVariableStatic cxxFileVariableStatic
hi default link LspCxxHlSymStruct cxxStruct
hi default link LspCxxHlSymStructField cxxStructField
hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
hi default link LspCxxHlSymClassField cxxStructField
hi default link LspCxxHlSymEnum cxxEnum
hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
hi default link LspCxxHlSymVariable cxxVariable
hi default link LspCxxHlSymMacro cxxMacro
hi default link LspCxxHlSymEnumMember cxxEnumMember
hi default link LspCxxHlSymParameter cxxParameter
hi default link LspCxxHlSymClass cxxTypeAlias

"语法检查
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
"let g:ale_lint_on_enter = 0
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}
