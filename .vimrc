set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936
set termencoding=utf-8
set enc=utf-8
set fenc=cp936

" ����ʱ�䣺2016-03-30 12:15:21

" �����ݼ���ǰ׺���� <Leader>
let mapleader=";"

" >>
" �ļ��������

" �����ļ��������
filetype on

" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype plugin on

" <<

" >>
" vim �����ǲ������ݼ�

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

" ����ʱ�ü���β�հ�
nnoremap <silent> <C-F2> :%s/\s\+$//<CR>:w<CR>

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

" <<

" �����ñ��������Ч
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" >>
" ����

" ����ʵʱ��������
set incsearch

" ����ʱ��Сд������
" set ignorecase

" �رռ���ģʽ
set nocompatible

" vim ����������ģʽ���ܲ�ȫ
set wildmenu

" <<

" >>
" �����װ

" vundle ��������
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" vundle ����Ĳ���б����λ�� vundle#begin() �� vundle#end() ֮��
call vundle#begin()
" * Vundle
Plugin 'VundleVim/Vundle.vim'
" * Scripts/Libs
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/DfrankUtil'
" * ��ɫ/UI
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
" *
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/MultipleSearch'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'gcmt/wildfire.vim'
Plugin 'Lokaltog/vim-easymotion'
"
Plugin 'will133/vim-dirdiff'
" *
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'
" *
Plugin 'vim-scripts/gtags.vim'
Plugin 'majutsushi/tagbar'
" *
Plugin 'vim-scripts/SearchComplete'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'ervandew/supertab'
" *
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/ruby-matchit'
" *
" ack
Plugin 'mileszs/ack.vim'
Plugin 'yegappan/grep'
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-scripts/FuzzyFinder'
" Plugin 'kien/ctrlp.vim'
" * IDE
Plugin 'scrooloose/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'vim-scripts/taglist.vim'
Plugin 'wesleyche/Trinity'
" * Buffer
Plugin 'jlanzarotta/bufexplorer'
" Plugin 'fholgado/minibufexpl.vim'
" * snip...
Plugin 'SirVer/ultisnips'
" Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" * Undo
Plugin 'sjl/gundo.vim'
" * Commenter
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
" * Languages
"   --C
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'
"   --Verilog SystemVerilog
Plugin 'vhda/verilog_systemverilog.vim'
"   --Others
Plugin 'vim-scripts/bash-support.vim'
"   --markdown
"     gem install pygments.rb
"     gem install redcarpet
"     npm -g install instant-markdown-d
"     // npm: zypper --no-refresh install nodejs
"     // markdown   �﷨ http://daringfireball.net/projects/markdown/syntax
"     // github.com ��չ https://guides.github.com/features/mastering-markdown/
"     // emoji  ���ű��� http://www.emoji-cheat-sheet.com/
Plugin 'suan/vim-instant-markdown'
" * �߼���...YouCompleteMe...
" Plugin 'Valloric/YouCompleteMe'
" *
Plugin 'lilydjwg/fcitx.vim'
Plugin 'vim-scripts/VimIM'
" * ScreenSaver
Plugin 'uguu-org/vim-matrix-screensaver'

" ����б����
call vundle#end()
filetype plugin indent on
" <<

" ��ɫ����
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" >>
" Ӫ��רע����

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
"" ���� vim ʱ�Զ�ȫ��
"autocmd VimEnter * call ToggleFullscreen()

" <<

" >>
" ������Ϣ

" ������ʾ״̬��
set laststatus=2

" ��ʾ��굱ǰλ��
set ruler

" �����к���ʾ
set number

" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn

" set Line 121 highlight
set colorcolumn=121

" ��ʾ��Ե�����
set showmatch

" ������ʾ�������
set hlsearch

" <<

" >>
" ��������

" ���� gvim ��ʾ����
"set guifont=YaHei\ Consolas\ Hybrid\ 10.5
"set guifont=Hack\ 13
set guifont=Consolas\ 12.5

" ��ֹ����
set nowrap

" ��ݼ�
nmap <Leader>wp :set wrap!<CR>

" ����״̬��������
let g:Powerline_colorscheme='solarized256'

" <<

" >>
" �﷨����

" �����﷨��������
syntax enable

" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on

" <<

" >>
" ����

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
" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" <<

" >>
" �����۵�

" �����������﷨���д����۵�
"set foldmethod=indent
set foldmethod=syntax
" ���� vim ʱ�ر��۵�����
set nofoldenable

let g:verilog_syntax_fold_lst="block"

" <<

" >>
" �ӿ���ʵ�ֿ����л�

" *.cpp �� *.h ���л�
nmap <silent> <Leader>sw :FSHere<cr>

" <<

" >>
" �����ղ�

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

" <<

" >>
" ��ǩ�б�

" ���� tagbar �Ӵ��ڵ�λ�ó��������༭�������
let tagbar_left=1
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ����ټǣ�identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
" ���ñ�ǩ�Ӵ��ڵĿ��
let tagbar_width=32
" tagbar �Ӵ����в���ʾ���������Ϣ
let g:tagbar_compact=1
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
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

" <<

" >>
" ���뵼��

" ���ڱ�ǩ�Ĵ��뵼��

" ���ò�� indexer ���� ctags �Ĳ���
" Ĭ�� --c++-kinds=+p+l����������Ϊ --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" Ĭ�� --fields=+iaS ������ YCM Ҫ�����Ϊ --fields=+iaSl
"let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
let g:indexer_ctagsCommandLineOptions="-R "

" �������ͬ����ǩ
nmap <Leader>tn :tnext<CR>
" �������ͬ����ǩ
nmap <Leader>tp :tprevious<CR>

"   " ��������Ĵ��뵼��
"
"   nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
"
"   " ֻ���� #include ���Ѵ򿪵��ļ�
"   nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" <<

" >>
" ����

" ʹ�� ctrlsf.vim ����ڹ�����ȫ�ֲ��ҹ�����ڹؼ��֣����ÿ�ݼ�����ݼ��ټǷ���search in project
nnoremap <Leader>sp :CtrlSF<CR>

" Grep
nnoremap <silent> <F3> :Grep -r <CR>

" <<

" >>
" �����滻

" ����滻
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-k>'

" ��׼�滻
" �滻����������˵����
" confirm  ���Ƿ��滻ǰ��һȷ��
" wholeword���Ƿ�����ƥ��
" replace  �����滻�ַ���
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
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" ��ȷ�ϡ�������
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" ��ȷ�ϡ�����
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" ȷ�ϡ�������
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" ȷ�ϡ�����
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" �滻^M
nnoremap <silent> <F7> :%s/<C-v><C-M>//g<CR>:w<CR>gg

" <<

" ģ�岹ȫ
" UltiSnips �� tab ���� YCM ��ͻ�������趨
let g:UltiSnipsSnippetDirectories=["mysnippets"]
"   let g:UltiSnipsExpandTrigger="<leader><tab>"
"   let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"   let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"   " >>
"   " YCM ��ȫ
"
"   " YCM ��ȫ�˵���ɫ
"   " �˵�
"   highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"   " ѡ����
"   highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"
"   " ��ȫ������ע����ͬ����Ч
"   let g:ycm_complete_in_comments=1
"
"   " ���� vim ���� .ycm_extra_conf.py �ļ���������ʾ
"   let g:ycm_confirm_extra_conf=0
"
"   " ���� YCM ��ǩ��ȫ����
"   let g:ycm_collect_identifiers_from_tags_files=0
"   "" ���� C++ ��׼�� tags
"   "set tags+=/data/misc/software/app/vim/stdcpp.tags
"   "set tags+=/data/misc/software/app/vim/sys.tags
"
"   " YCM ���� OmniCppComplete ��ȫ���棬�������ݼ�
"   inoremap <leader>; <C-x><C-o>
"
"   " ��ȫ���ݲ��Էָ��Ӵ�����ʽ���֣�ֻ��ʾ��ȫ�б�
"   set completeopt-=preview
"
"   " �ӵ�һ�������ַ��Ϳ�ʼ����ƥ����
"   let g:ycm_min_num_of_chars_for_completion=1
"
"   " ��ֹ����ƥ���ÿ�ζ���������ƥ����
"   let g:ycm_cache_omnifunc=0
"
"   " �﷨�ؼ��ֲ�ȫ
"   let g:ycm_seed_identifiers_with_syntax=1
"
"   " <<

" >>
" �ɽӿڿ�������ʵ�ֿ��
" ���� pullproto.pl �ű�·��
let g:protodefprotogetter='~/.vim/bundle/protodef/pullproto.pl'

" ��Ա������ʵ��˳��������˳��һ��
let g:disable_protodef_sorting=1

" <<

" >>
" ����Ϣ�ο�

" ����:Man����鿴����man��Ϣ
source $VIMRUNTIME/ftplugin/man.vim

" ����:Man����鿴����man��Ϣ�Ŀ�ݼ�
nmap <Leader>man :Man 3 <cword><CR>

" <<

" >>
" �����ļ����

" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
nmap <Leader>fl :NERDTreeToggle<CR>

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

" <<

" >>
" ���ĵ��༭

"   " ��ʾ/���� MiniBufExplorer ����
"   " map <Leader>bl :MBEToggle<cr>

"   " buffer �л���ݼ�
"   map <C-Tab> :MBEbn<cr>
"   map <C-S-Tab> :MBEbp<cr>

" <<

" >>
" ��Tab
nnoremap <A-1> :tabnew<CR>
nnoremap <A-2> :tabnext<CR>
nnoremap <A-3> :tabprev<CR>
nnoremap <A-4> :tabclose<CR>

" <<

let g:vimim_cloud=-1

" >>
" �����ָ�

" ���û���������
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" ���� undo ��ʷ���������д��� .undo_history/
set undodir=~/.undo_history/
set undofile

" �����ݼ�
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" �ָ���ݼ�
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>

" <<

"   " ���ÿ�ݼ�ʵ��һ�����뼰����
"   nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
"   nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>

" >>
" ����ѡ�н�Է��ڵ��ı�

" ��ݼ�
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" ��������Щ��Է�
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" <<

" ���� gundo ��
nnoremap <Leader>ud :GundoToggle<CR>

