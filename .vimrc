" about files
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936
set termencoding=utf-8
set enc=utf-8
set fenc=cp936

" �����ݼ�ǰ׺���� <Leader>
let mapleader=";"

" ���ڴ�С��λ��
winpos 20 20
set lines=30 columns=130

" > > > > > > �ļ��������
" �����ļ��������
filetype on

" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype plugin on
" < < < < < <

" > > > > > > vim �����ǲ������ݼ�
" �����ݼ������׺���β
nmap LB 0
nmap LE $

" ���ÿ�ݼ���ѡ���ı��鸴����ϵͳ������
vnoremap <Leader>y "+y

" ���ÿ�ݼ���ϵͳ����������ճ����vim
nmap <Leader>p "+p

vnoremap y "1y
vnoremap p "1p

" �����ݼ��رյ�ǰ�ָ��
nmap <Leader>q :q<CR>
" �����ݼ����浱ǰ��������
nmap <Leader>w :w<CR>
" �����ݼ��������д������ݲ��˳� vim
nmap <Leader>WQ :wa<CR>:q<CR>
" �����κα��棬ֱ���˳� vim
nmap <Leader>Q :qa!<CR>

" ����ʱ�ü���β�հף�Ctrl+F2��
nnoremap <silent> <C-F2> :w<CR>:%s/\s\+$//<CR>:w<CR>
" Ctrl+S
nmap <silent> <C-s> :w<CR>

" set backspace
set backspace=eol,start,indent

" �ӹ�����׺���ĩʱ����������һ��ȥ
set whichwrap=b,s,<,>,[,]

" ���ÿ�ݼ������Ӵ���
" ���α���
nnoremap <Leader>nw <C-W><C-W>
" ��ת���ҷ��Ĵ���
nnoremap <Leader>lw <C-W>l
" ��ת���󷽵Ĵ���
nnoremap <Leader>hw <C-W>h
" ��ת���Ϸ����Ӵ���
nnoremap <Leader>kw <C-W>k
" ��ת���·����Ӵ���
nnoremap <Leader>jw <C-W>j

" �����ݼ��ڽ�Է�֮����ת
nmap <Leader>M %
" < < < < < <

" �����ñ��������Ч
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" > > > > > > ����
" ����ʵʱ��������
set incsearch

" ����ʱ��Сд������
set ignorecase

" �رռ���ģʽ
set nocompatible

" vim ����������ģʽ���ܲ�ȫ
set wildmenu
" < < < < < <

" > > > > > > ���
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
    "           - ��Ҫ make
    Plugin 'Shougo/vimproc.vim'

    " ��ɫ��UI
    Plugin 'tomasr/molokai'
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'vim-scripts/phd'
    Plugin 'Lokaltog/vim-powerline'

    " ��ǩ
    Plugin 'kshenoy/vim-signature'
    "Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'

    " ����
    Plugin 'vim-scripts/MultipleSearch'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'gcmt/wildfire.vim'
    Plugin 'Lokaltog/vim-easymotion'
    " Since vim 6.0, matchit.vim has been included in the standard vim distribution, under the macros/ directory
    Plugin 'vim-scripts/matchit.zip'

    " ��ǩ
    "   gtags ��Ҫ��װ gtags�������������� pip3 install pygments
    Plugin 'vim-scripts/gtags.vim'
    Plugin 'majutsushi/tagbar'
    "Plugin 'vim-scripts/indexer.tar.gz'
    Plugin 'alvan/vim-indexer'

    "
    Plugin 'vim-scripts/AutoComplPop'
    Plugin 'vim-scripts/SearchComplete'
    Plugin 'ervandew/supertab'

    " ����
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

    " ģ��
    Plugin 'SirVer/ultisnips'
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
    "           - bash
    Plugin 'vim-scripts/bash-support.vim'
    "           - markdown
    "           - vim ���뼯�� ruby�����Ұ�װ pygments.rb��redcarpet��instant-markdown-d ����������
    "Plugin 'suan/vim-instant-markdown'
    " Formater
    Plugin 'kana/vim-operator-user'
    Plugin 'rhysd/vim-clang-format'
    " Lint
    Plugin 'dense-analysis/ale.git'

    " YCM �߼����������� tabnine �� - -|||
    "Plugin 'Valloric/YouCompleteMe'
    "Plugin 'codota/tabnine-vim'

    " ���뷨
    "Plugin 'lilydjwg/fcitx.vim'
    Plugin 'vim-scripts/VimIM'

    " ����
    Plugin 'uguu-org/vim-matrix-screensaver'

call vundle#end()

filetype plugin indent on
" < < < < < <

" ��ɫ����
set background=dark

let g:rehash256 = 1
colorscheme molokai
"colorscheme solarized
"colorscheme phd

" > > > > > >
" ��ֹ�����˸
set gcr=a:block-blinkon0

" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" ��ֹ��ʾ�˵��͹�����
"set guioptions-=m
set guioptions-=T

" ���ⲿ���� wmctrl ���ƴ�����󻯵������в�����װ��һ�� vim �ĺ���
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" ȫ����/�ؿ�ݼ�
map <silent> <F11> :call ToggleFullscreen()<CR>
" ���� vim ʱ�Զ�ȫ��
"autocmd VimEnter * call ToggleFullscreen()
" < < < < < <

" > > > > > > ������Ϣ
" ������ʾ״̬��
set laststatus=2

" ��ʾ��굱ǰλ��
set ruler

" �����к���ʾ
set number

" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn

" Set Line 121 highlight
set colorcolumn=121

" ��ʾ��Ե�����
set showmatch

" ������ʾ�������
set hlsearch
" < < < < < <

" > > > > > > ��������
" ���� gvim ��ʾ����
set guifont=Consolas\ 19
"set guifont=YaHei\ Consolas\ Hybrid\ 10.5
"set guifont=Hack\ 13

set linespace=5

" ��ֹ����
set nowrap

" ��ݼ�
nmap <Leader>wp :set wrap!<CR>

" ����״̬��������
let g:Powerline_colorscheme='solarized256'
" < < < < < <

" > > > > > > �﷨����
" �����﷨��������
syntax enable

" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on

" C++ initializer_list Ĭ�ϲ������������Ҫ��ӣ�
"syntax keyword cppSTLtype initializer_list
" < < < < < <

" > > > > > > ����
" ����Ӧ��ͬ���Ե���������
filetype indent on

" ���Ʊ����չΪ�ո�
set expandtab

" ���ñ༭ʱ�Ʊ��ռ�ÿո���
set tabstop=4

" ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4

" �� vim �����������Ŀո���Ϊһ���Ʊ��
set softtabstop=4

" �������ӻ���� Indent Guides
" �� vim ������
let g:indent_guides_enable_on_vim_startup=1
" �ӵ� ? �㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" < < < < < <

" > > > > > > �����۵�
" �����������﷨���д����۵�
set foldmethod=syntax
"set foldmethod=indent
" ���� vim ʱ�ر��۵�����
set nofoldenable

let g:verilog_syntax_fold_lst="block"
" < < < < < <

" > > > > > > �ӿ���ʵ�ֿ����л�
" *.cpp �� *.h ���л�
nmap <silent> <Leader>sw :FSHere<cr>
" < < < < < <

" > > > > > > �����ղ�
" �Զ��� vim-signature ��ݼ�
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

" > > > > > > ��ǩ�б�
" ���� tagbar �Ӵ��ڵ�λ�ó��������༭�������
let tagbar_left=1
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ����ټǣ�identifier list by tag
"nnoremap <Leader>ilt :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
" ���ñ�ǩ�Ӵ��ڵĿ��
let tagbar_width=32
" tagbar �Ӵ����в���ʾ���������Ϣ
let g:tagbar_compact=1
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
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

" > > > > > > ���뵼��
" 1. ���ڱ�ǩ�Ĵ��뵼��
" ���ò�� indexer ���� ctags �Ĳ���
" Ĭ�� --c++-kinds=+p+l����������Ϊ --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
"let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
"let g:indexer_ctagsCommandLineOptions="-R "

" �������ͬ����ǩ
nmap <Leader>tn :tnext<CR>
" �������ͬ����ǩ
nmap <Leader>tp :tprevious<CR>

" 2. ��������Ĵ��뵼��
" ctags Ĭ�ϵ� --fields=+iaS ������ YCM Ҫ�����Ϊ --fields=+iaSl
" nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" " ֻ���� #include ���Ѵ򿪵��ļ�
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" < < < < < <

let g:ale_lint_on_enter = 0

" > > > > > > ����
" ʹ�� ctrlsf.vim ����ڹ�����ȫ�ֲ��ҹ�����ڹؼ��֡���ݼ��ټǣ�Search in Project/File
nnoremap <Leader>sp :CtrlSF<CR>
nnoremap <Leader>sf :CtrlSF<CR>

" Grep
nnoremap <silent> <F3> :Grep -r <CR>
" < < < < < <

" > > > > > > �����滻
" ����滻
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-k>'

" ��׼�滻
" ��������˵����
"   Confirm  ���Ƿ��滻ǰ��һȷ��
"   Wholeword���Ƿ�����ƥ��
"   Replace  �����滻�ַ���
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
" ��ȷ�ϡ�������
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" ��ȷ�ϡ�����
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" ȷ�ϡ�������
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" ȷ�ϡ�����
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" �滻 ^M
nnoremap <silent> <F7> :%s/<C-v><C-M>//g<CR>:w<CR>gg
" < < < < < <

" ģ�岹ȫ
" UltiSnips ��·��
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips �� tab ���� YCM ��ͻ�������趨
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " > > > > > > YCM ��ȫ
" " �˵���ɫ
" " �˵�
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" " ѡ����
" highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"
" " ��ȫ������ע����ͬ����Ч
" let g:ycm_complete_in_comments=1
"
" " ���� vim ���� .ycm_extra_conf.py �ļ���������ʾ
" let g:ycm_confirm_extra_conf=0
"
" " ���� YCM ��ǩ��ȫ����
" let g:ycm_collect_identifiers_from_tags_files=0
" " ���� C++ ��׼�� tags
" "set tags+=/data/misc/software/app/vim/stdcpp.tags
" "set tags+=/data/misc/software/app/vim/sys.tags
"
" " YCM ���� OmniCppComplete ��ȫ���棬�������ݼ�
" inoremap <leader>; <C-x><C-o>
"
" " ��ȫ���ݲ��Էָ��Ӵ�����ʽ���֣�ֻ��ʾ��ȫ�б�
" set completeopt-=preview
"
" " �ӵ�һ�������ַ��Ϳ�ʼ����ƥ����
" let g:ycm_min_num_of_chars_for_completion=1
"
" " ��ֹ����ƥ���ÿ�ζ���������ƥ����
" let g:ycm_cache_omnifunc=0
"
" " �﷨�ؼ��ֲ�ȫ
" let g:ycm_seed_identifiers_with_syntax=1
" " < < < < < <

" " > > > > > > �ɽӿڿ�������ʵ�ֿ��
" " �������������Զ�������ʵ�ֵĴ�����
" " ���� pullproto.pl �ű�·��
" let g:protodefprotogetter='~/.vim/dein/repos/github.com/derekwyatt/vim-protodef/pullproto.pl'
"
" " ��Ա������ʵ��˳��������˳��һ��
" let g:disable_protodef_sorting=1
" " < < < < < <

" > > > > > > ����Ϣ�ο�
" ����man����鿴����man��Ϣ
source $VIMRUNTIME/ftplugin/man.vim

" ����man����鿴����man��Ϣ�Ŀ�ݼ�
nmap <Leader>man :Man 3 <cword><CR>
" < < < < < <

" > > > > > > �����ļ����
" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
"nmap <Leader>fl :NERDTreeToggle<CR>
nmap <F4> :NERDTreeToggle<CR>

" ���� NERDTree �Ӵ��ڿ��
let NERDTreeWinSize=22

" ���� NERDTree �Ӵ���λ��
let NERDTreeWinPos="left"

" ��ʾ�����ļ�
let NERDTreeShowHidden=1

" NERDTree �Ӵ����в���ʾ���������Ϣ
" let NERDTreeMinimalUI=1

" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
" < < < < < <

" > > > > > > ��Tab
nnoremap <A-1> :tabnew<CR>
nnoremap <A-2> :tabnext<CR>
nnoremap <A-3> :tabprev<CR>
nnoremap <A-4> :tabclose<CR>
" < < < < < <

" > > > > > > VimIM
let g:vimim_cloud=-1
" < < < < < <

" > > > > > > �����ָ�
" ���û���������
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" ���� undo ��ʷ���������д��� ~/.undo_history/
set undodir=~/.undo_history/
set undofile

" �����ݼ�
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" �ָ���ݼ�
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>
" < < < < < <

" " > > > > > > ���ÿ�ݼ�ʵ��һ�����뼰����
" nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
" nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>
" < < < < < <

" > > > > > > ����ѡ�н�Է��ڵ��ı�
" ��ݼ�
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" ��������Щ��Է�
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" matchit ƥ��
let b:match_words = '\<begin\>:\<end\>,'
	                \ . '\<module\>:\<endmodule\>,'
	                \ . '\<case\>:\<endcase\>,'
	                \ . '\<generate\>:\<endgenerate\>'
" < < < < < <

" > > > > > > ���� gundo ��
" Python 3
let g:gundo_prefer_python3 = 1

nnoremap <Leader>ud :GundoToggle<CR>
" < < < < < <

