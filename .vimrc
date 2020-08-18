" about files
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936
set termencoding=utf-8
set enc=utf-8
set fenc=cp936

" 定义快捷键前缀，即 <Leader>
let mapleader=";"

" 窗口大小和位置
winpos 20 20
set lines=30 columns=130

" > > > > > > 文件类型侦测
set directory^=$HOME/.vim/tmp//
let $TMPDIR=$HOME."/tmp"

" 开启文件类型侦测
filetype on

" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" < < < < < <

" > > > > > > vim 自身（非插件）快捷键
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

vnoremap y "1y
vnoremap p "1p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" 保存时裁剪行尾空白（Ctrl+F2）
nnoremap <silent> <C-F2> :w<CR>:%s/\s\+$//<CR>:w<CR>
" Ctrl+S
nmap <silent> <C-s> :w<CR>

" set backspace
set backspace=eol,start,indent

" 从光标行首和行末时可以跳到另一行去
set whichwrap=b,s,<,>,[,]

" 设置快捷键遍历子窗口
" 依次遍历
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" < < < < < <

" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" > > > > > > 其他
" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
"set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu
" < < < < < <

" > > > > > > 插件
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    " Vundle
    Plugin 'VundleVim/Vundle.vim'

    " libs
    Plugin 'vim-scripts/L9'
    Plugin 'vim-scripts/DfrankUtil'
    Plugin 'vim-scripts/vimprj'
    Plugin 'vim-scripts/FuzzyFinder'
    "           - 需要 make
    Plugin 'Shougo/vimproc.vim'

    " 配色，UI
    Plugin 'tomasr/molokai'
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'vim-scripts/phd'
    Plugin 'Lokaltog/vim-powerline'

    " 书签
    Plugin 'kshenoy/vim-signature'
    "Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'

    " 辅助
    Plugin 'vim-scripts/MultipleSearch'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'gcmt/wildfire.vim'
    Plugin 'Lokaltog/vim-easymotion'
    " Since vim 6.0, matchit.vim has been included in the standard vim distribution, under the macros/ directory
    Plugin 'vim-scripts/matchit.zip'

    " 标签
    "   gtags 需要安装 gtags，查找引用依赖 pip3 install pygments
    "Plugin 'vim-scripts/gtags.vim'
    Plugin 'majutsushi/tagbar'
    "Plugin 'vim-scripts/indexer.tar.gz'
    Plugin 'alvan/vim-indexer'

    "
    Plugin 'vim-scripts/AutoComplPop'
    Plugin 'vim-scripts/SearchComplete'
    Plugin 'ervandew/supertab'

    " 搜索
    Plugin 'mileszs/ack.vim'
    Plugin 'yegappan/grep'
    Plugin 'dyng/ctrlsf.vim'
    Plugin 'Yggdroot/LeaderF'

    " IDE
    Plugin 'scrooloose/nerdtree'
    Plugin 'wesleyche/SrcExpl'
    "Plugin 'vim-scripts/taglist.vim'
    Plugin 'wesleyche/Trinity'

    " Buffer
    Plugin 'jlanzarotta/bufexplorer'

    " 模板
    " ultisnips需要Python支持，可以用vim-snipmate替代
    Plugin 'SirVer/ultisnips'
    "Plugin 'MarcWeber/vim-addon-wm-utils'
    "Plugin 'tomtom/tlib_vim'
    "Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'

    " Undo
    Plugin 'sjl/gundo.vim'

    " Commenter
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'vim-scripts/DrawIt'

    " Languages - C/C++
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'derekwyatt/vim-fswitch'
    Plugin 'derekwyatt/vim-protodef'
    "           - Verilog, SystemVerilog
    Plugin 'vhda/verilog_systemverilog.vim'
    Plugin 'vim-scripts/automatic.vim'
    "           - bash
    Plugin 'vim-scripts/bash-support.vim'
    "           - markdown
    "           - vim 必须集成 ruby，并且安装 pygments.rb、redcarpet、instant-markdown-d 三个依赖库
    "Plugin 'suan/vim-instant-markdown'
    " Formater
    Plugin 'kana/vim-operator-user'
    Plugin 'rhysd/vim-clang-format'
    " Lint
    Plugin 'dense-analysis/ale.git'

    " YCM 高级货，还是用 tabnine 吧 - -|||
    "Plugin 'Valloric/YouCompleteMe'
    "Plugin 'codota/tabnine-vim'

    " 输入法
    "Plugin 'lilydjwg/fcitx.vim'
    Plugin 'vim-scripts/VimIM'

    " 屏保
    Plugin 'uguu-org/vim-matrix-screensaver'

call vundle#end()

filetype plugin indent on
" < < < < < <

" 配色方案
set background=dark

let g:rehash256 = 1
colorscheme molokai
"colorscheme solarized
"colorscheme phd

" > > > > > >
" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
"set guioptions-=m
set guioptions-=T

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()
" < < < < < <

" > > > > > > 辅助信息
" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" Set Line 121 highlight
set colorcolumn=121

" 显示配对的括号
set showmatch

" 高亮显示搜索结果
set hlsearch
" < < < < < <

" > > > > > > 其他美化
" 设置 gvim 显示字体
set guifont=Consolas\ 19
"set guifont=YaHei\ Consolas\ Hybrid\ 10.5
"set guifont=Hack\ 13

set linespace=5

" 禁止折行
set nowrap

" 快捷键
nmap <Leader>wp :set wrap!<CR>

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
" < < < < < <

" > > > > > > 语法分析
" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" C++ initializer_list 默认并不会高亮，需要添加：
"syntax keyword cppSTLtype initializer_list
" < < < < < <

" > > > > > > 缩进
" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第 ? 层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" < < < < < <

" > > > > > > 代码折叠
" 基于缩进或语法进行代码折叠
set foldmethod=syntax
"set foldmethod=indent
" 启动 vim 时关闭折叠代码
set nofoldenable

let g:verilog_syntax_fold_lst="block"
" < < < < < <

" > > > > > > 接口与实现快速切换
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>
" < < < < < <

" > > > > > > 代码收藏
" 自定义 vim-signature 快捷键
let g:SignatureMap = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "m,",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "m-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "mda",
    \ 'PurgeMarkers'       :  "m<BS>",
    \ 'GotoNextLineAlpha'  :  "']",
    \ 'GotoPrevLineAlpha'  :  "'[",
    \ 'GotoNextSpotAlpha'  :  "`]",
    \ 'GotoPrevSpotAlpha'  :  "`[",
    \ 'GotoNextLineByPos'  :  "]'",
    \ 'GotoPrevLineByPos'  :  "['",
    \ 'GotoNextSpotByPos'  :  "mn",
    \ 'GotoPrevSpotByPos'  :  "mp",
    \ 'GotoNextMarker'     :  "[+",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ 'ListLocalMarks'     :  "ms",
    \ 'ListLocalMarkers'   :  "m?"
\ }
" < < < < < <

" > > > > > > ClangFormat for C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
" < < < < < <

" > > > > > > 标签列表
" 设置 tagbar 子窗口的位置出现在主编辑区的右边
let tagbar_left=0
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
"nnoremap <Leader>ilt :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
" for C++
let g:tagbar_type_cpp = {
    \ 'ctagstype' : 'c++',
    \ 'kinds'     : [
        \ 'c:classes:0:1',
        \ 'd:macros:0:1',
        \ 'e:enumerators:0:0',
        \ 'f:functions:0:1',
        \ 'g:enumeration:0:1',
        \ 'l:local:0:1',
        \ 'm:members:0:1',
        \ 'n:namespaces:0:1',
        \ 'p:functions_prototypes:0:1',
        \ 's:structs:0:1',
        \ 't:typedefs:0:1',
        \ 'u:unions:0:1',
        \ 'v:global:0:1',
        \ 'x:external:0:1'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum'      : 'g',
        \ 'namespace' : 'n',
        \ 'class'     : 'c',
        \ 'struct'    : 's',
        \ 'union'     : 'u'
    \ }
\ }

" for Verilog/SystemVerilog
" exuberant-ctags 5.8 or later
"let g:tagbar_type_systemverilog= {
"    \ 'ctagstype' : 'systemverilog',
"    \ 'kinds'     : [
"        \ 'c:classes',
"        \ 't:tasks',
"        \ 'f:functions',
"        \ 'm:modules',
"        \ 'p:program',
"        \ 'i:interfaces',
"        \ 'e:typedefs',
"        \ 'd:defines',
"        \ 'v:variables',
"        \ 'a:parameters'
"        " ctags 5.9:
"        " \ 'e:typedef',
"        " \ 'd:define',
"        " \ 'v:variable',
"        " \ 'a:parameter'
"    \ ]
"\ }

" universal-ctags
let g:tagbar_type_systemverilog = {
    \ 'ctagstype': 'systemverilog',
    \ 'kinds' : [
        \ 'A:assertions',
        \ 'C:classes',
        \ 'E:enumerators',
        \ 'I:interfaces',
        \ 'K:packages',
        \ 'M:modports',
        \ 'P:programs',
        \ 'Q:prototypes',
        \ 'R:properties',
        \ 'S:structs and unions',
        \ 'T:type declarations',
        \ 'V:covergroups',
        \ 'b:blocks',
        \ 'c:constants',
        \ 'e:events',
        \ 'f:functions',
        \ 'm:modules',
        \ 'n:net data types',
        \ 'p:ports',
        \ 'r:register data types',
        \ 't:tasks',
    \ ],
    \ 'sro': '.',
    \ 'kind2scope' : {
        \ 'K' : 'package',
        \ 'C' : 'class',
        \ 'm' : 'module',
        \ 'P' : 'program',
        \ 'I' : 'interface',
        \ 'M' : 'modport',
        \ 'f' : 'function',
        \ 't' : 'task',
    \ },
    \ 'scope2kind' : {
        \ 'package'   : 'K',
        \ 'class'     : 'C',
        \ 'module'    : 'm',
        \ 'program'   : 'P',
        \ 'interface' : 'I',
        \ 'modport'   : 'M',
        \ 'function'  : 'f',
        \ 'task'      : 't',
    \ },
\ }
" < < < < < <

" > > > > > > IDE
"nmap <F10> :SrcExplToggle<CR>
nmap <F10> :TrinityToggleSourceExplorer<CR>
" < < < < < <

" > > > > > > 代码导航
" 1. 基于标签的代码导航
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
"let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
"let g:indexer_ctagsCommandLineOptions="-R "

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 2. 基于语义的代码导航
" ctags 默认的 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
" nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" " 只能是 #include 或已打开的文件
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" < < < < < <

" > > > > > > Lint
let g:ale_enable=0
let g:ale_lint_on_text_change='never'
let g:ale_lint_on_insert_leave=0
let g:ale_lint_on_enter=0
let g:ale_lint_on_save=1

nnoremap <F9> :ALEToggle<CR>

nmap <silent> <A-9> <Plug>(ale_previous_wrap)
nmap <silent> <A-0> <Plug>(ale_next_wrap)
" < < < < < <

" > > > > > > 查找
" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字。快捷键速记：Search in Project/File
nnoremap <Leader>sp :CtrlSF<CR>
nnoremap <Leader>sf :CtrlSF<CR>
nnoremap <F5> :CtrlSFToggle<CR>

" LeaderF
let g:Lf_HideHelp=1
let g:Lf_IgnoreCurrentBufferName=1
let g:Lf_WindowPosition="popup"
let g:Lf_PreviewInPopup=1

let g:Lf_ShortcutF="<Leader>ff"

nnoremap <Leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
nnoremap <Leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
nnoremap <Leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <Leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" easymotion
map <Leader>fc <Plug>(easymotion-bd-f)
nmap <Leader>fc <Plug>(easymotion-overwin-f)

" Grep
nnoremap <silent> <F3> :Grep -r <CR>
" < < < < < <

" > > > > > > 内容替换
" 快捷替换
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-k>'

" 精准替换
" 函数参数说明：
"   Confirm  ：是否替换前逐一确认
"   Wholeword：是否整词匹配
"   Replace  ：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    "execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
    execute '%s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" 替换 ^M
nnoremap <silent> <F7> :%s/<C-v><C-M>//g<CR>:w<CR>gg
" < < < < < <

" 模板补全
" UltiSnips 的路径
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，如果使用 YCM 则需重新设定
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " > > > > > > YCM 补全
" " 菜单配色
" " 菜单
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" " 选中项
" highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"
" " 补全功能在注释中同样有效
" let g:ycm_complete_in_comments=1
"
" " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
" let g:ycm_confirm_extra_conf=0
"
" " 开启 YCM 标签补全引擎
" let g:ycm_collect_identifiers_from_tags_files=0
" " 引入 C++ 标准库 tags
" "set tags+=/data/misc/software/app/vim/stdcpp.tags
" "set tags+=/data/misc/software/app/vim/sys.tags
"
" " YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
" inoremap <leader>; <C-x><C-o>
"
" " 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt-=preview
"
" " 从第一个键入字符就开始罗列匹配项
" let g:ycm_min_num_of_chars_for_completion=1
"
" " 禁止缓存匹配项，每次都重新生成匹配项
" let g:ycm_cache_omnifunc=0
"
" " 语法关键字补全
" let g:ycm_seed_identifiers_with_syntax=1
" " < < < < < <

" " > > > > > > 由接口快速生成实现框架
" " 即根据类声明自动生成类实现的代码框架
" " 设置 pullproto.pl 脚本路径
" let g:protodefprotogetter='~/.vim/dein/repos/github.com/derekwyatt/vim-protodef/pullproto.pl'
"
" " 成员函数的实现顺序与声明顺序一致
" let g:disable_protodef_sorting=1
" " < < < < < <

" > > > > > > 库信息参考
" 启用man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim

" 定义man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>
" < < < < < <

" > > > > > > 工程文件浏览
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
"nmap <Leader>fl :NERDTreeToggle<CR>
"nmap <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :NERDTreeToggle<CR>

" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22

" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="left"

" 显示隐藏文件
let NERDTreeShowHidden=1

" NERDTree 子窗口中不显示冗余帮助信息
" let NERDTreeMinimalUI=1

" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" < < < < < <

" RTL Tree
nnoremap <S-F4> :RtlTree<CR>

" > > > > > > 多Tab
nnoremap <A-1> :tabnew<CR>
nnoremap <A-2> :tabnext<CR>
nnoremap <A-3> :tabprev<CR>
nnoremap <A-4> :tabclose<CR>
" < < < < < <

" > > > > > > VimIM
let g:vimim_cloud=-1
" < < < < < <

" > > > > > > 环境恢复
" 设置环境保存项
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" 保存 undo 历史。必须先行创建 ~/.undo_history/
set undodir=~/.undo_history/
set undofile

" 保存快捷键
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" 恢复快捷键
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>
" < < < < < <

" " > > > > > > 设置快捷键实现一键编译及运行
" nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
" nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>
" < < < < < <

" > > > > > > 快速选中结对符内的文本
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" matchit 匹配
let b:match_words = '\<begin\>:\<end\>,'
	                \ . '\<module\>:\<endmodule\>,'
	                \ . '\<case\>:\<endcase\>,'
	                \ . '\<casex\>:\<endcase\>,'
	                \ . '\<casez\>:\<endcase\>,'
	                \ . '\<generate\>:\<endgenerate\>'
" < < < < < <

" > > > > > > 调用 gundo 树
" Python 3
let g:gundo_prefer_python3 = 1

nnoremap <Leader>ud :GundoToggle<CR>
" < < < < < <

