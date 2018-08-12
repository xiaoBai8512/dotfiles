"Automatic install plugins when there is no plugin installed from vimenter
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    au VimEnter * PlugInstall --sync | so $MYVIMRC
endif

"Vim-plug
call plug#begin('~/.vim/vim-plug-plugins')

"Javascript html and css {{{
Plug 'chemzqm/wxapp.vim'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'herringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim', {'do': 'yarn global add typescript'}
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx', {'for': ['javascript.jsx', 'javascript', 'typescript']}
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'ternjs/tern_for_vim', {'do': 'yarn global add tern'}
Plug 'w0rp/ale', {'do': 'yarn global add eslint prettier-eslint prettier '
            \ . 'eslint-plugin-react eslint-plugin-vue'}
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'heavenshell/vim-jsdoc'
Plug 'valloric/youcompleteme', {'do' : './install.py'}
" }}}
Plug 'editorconfig/editorconfig-vim'
Plug 'andrewradev/splitjoin.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-xmark'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-fold'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'klen/python-mode'
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar', {'do': 'yarn global add git+https://github.com/ramitos/jsctags.git'}
Plug 'mbbill/undotree'
Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/vim-plug-plugins/gocode/vim/symlink.sh'}
Plug 'mhinz/vim-signify' "Show version control status by adding a sign column
Plug 'mhinz/vim-startify' "Beautiful welcome page
Plug 'mileszs/ack.vim', {'do': 'brew install ack'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'raimondi/delimitmate'
Plug 'shougo/denite.nvim'
Plug 'shougo/unite.vim'
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'sirVer/ultisnips'
Plug 'rstacruz/vim-ultisnips-css'
Plug 'tell-k/vim-autopep8', {'do': 'pip install autopep8'}
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
"Yankstack must load before surround or surround after yankstack beacuse
"keymap conflict with capital s
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'valloric/MatchTagAlways'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vimjas/vim-python-pep8-indent'
Plug 'xolox/vim-misc'
Plug 'yggdroot/indentline'
Plug 'danro/rename.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ujihisa/neco-look'
Plug 't9md/vim-choosewin'
Plug 'mhinz/vim-grepper'
Plug 'osyo-manga/vim-jplus'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/BufOnly.vim'
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh && ' .
            \ 'yarn global add javascript-typescript-langserver vue-language-server' .
            \ 'go get -u github.com/sourcegraph/go-langserver',
            \ }
Plug 'chrisbra/csv.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'gcmt/taboo.vim'

"Always load as the very last one
if !has('gui_running')
    Plug 'ryanoasis/vim-devicons'
endif

call plug#end()
