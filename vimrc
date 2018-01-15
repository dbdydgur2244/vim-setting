set nocompatible " 오리지날 VI와 호환하지 않음
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'othree/html5.vim'



call vundle#end()            " required

filetype plugin indent on

" tags
set tags=./tags

" indent 관련 옵션 
set autoindent  " 자동 들여쓰기
set cindent " C 프로그래밍용 자동 들여쓰기
set smartindent " 스마트한 들여쓰기


" 백업 관련 옵션
set writebackup=on

set title " 제목을 표시

" 자동완성 관련 옵션
set showmatch " 매칭되는 괄호를 보여줌
set wmnu " tab 자동완성시 가능한 목록을 보여줌


" 파일/디렉토리명 자동완성 할 때 무시할 패턴
set wildignore=*.o,*.bak,.*.swap,*.pyc
set wildignorecase=on " 파일명이나 디렉토리명 자동완성 할 때 대소문자 무시
set wildmenu=on " command-line 자동 완성 기능

" 화면 넘어가는 경우 한 라인ㅇ르 여러줄로 표시
set wrap
set linebreak       " 라인을 끊을 때 단어 단위로 자릅니다.
set showbreak=+++\  " 윗 줄과 연결되는 줄은 '+++ ' 로 시작되어 알아볼 수 있게 합니다.

set visualbell " 키를 잘못눌렀을 때 화면 프레시

set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set cursorline " 커거가 있는 라인 하이라이팅

" Tab 관련 옵션
set expandtab " 탭대신 스페이스
set ts=4 " Tab 너비
set shiftwidth=4 " 자동 들여쓰기 4칸

set number " 행번호 표시, set nu 도 가능

set fileencoding=utf-8,euc-kr " 파일저장인코딩 
set tenc=utf-8      " 터미널 인코딩

set mouse=a

" 검색 관련 옵션
set nowrapscan " 
set hlsearch " 검색어 강조, set hls 도 가능
set ignorecase
set smartcase " 대소문자 있으면 구분
set incsearch " 키워드 입력시 점진적 검색

set lbr


set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로


set history=1000 "  vi 편집기록 기억갯수 .viminfo에 기록

" 마지막으로 수정된 곳에 커서를 위치함
" au BufReadPost *
" \ if line("'\"") > 0 && line("'\"") <= line("$") |
" \ exe "norm g`\"" |
" \ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\



filetype indent on "  파일 종류에 따른 구문강조

" 구문 강조 사용
if has("syntax")
 syntax on
endif

let c_no_curly_error=1


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set nobackup " 백업파일을 만들지 않음

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }


" html5.vim configure
" Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0
" Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0
" Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0
" Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0


" 
nmap <F7> :NERDTree<CR>
