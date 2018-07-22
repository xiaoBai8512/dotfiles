"Automatic install plugins when there is no plugin installed from vimenter
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    au VimEnter * PlugInstall --sync | so $MYVIMRC
endif

"Vim-plug
call plug#begin('~/.vim/vim-plug-plugins')

"Javascript html and css {{{
Plug 'gorodinskiy/vim-coloresque'
Plug 'chemzqm/wxapp.vim'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'carlitux/deoplete-ternjs', {'do': 'yarn global add tern'}
Plug 'herringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install',
            \ 'for': ['javascript', 'typescript', 'css',
            \         'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim', {'for': 'typescript', 'do': 'yarn global add tsc'}
Plug 'mhartington/nvim-typescript', {'for': 'typescript', 'do': 'cd ./rplugin/node/nvim_typescript && yarn install && yarn build'}
Plug 'moll/vim-node', {'for': 'javascript'}
Plug 'mxw/vim-jsx', {'for': ['javascript.jsx', 'javascript']}
Plug 'othree/yajs.vim', {'for': [ 'javascript', 'javascript.jsx', 'html']}
Plug 'othree/html5.vim', {'for': ['html', 'vue', 'javascript', 'javascript.jsx']}
Plug 'ternjs/tern_for_vim', {'do': 'yarn global add tern'}
Plug 'w0rp/ale', {'do': 'yarn global add eslint prettier-eslint prettier '
            \ . 'eslint-plugin-react eslint-plugin-vue'}
" }}}
Plug 'editorconfig/editorconfig-vim'
Plug 'andrewradev/splitjoin.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-xmark'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-fold'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'kien/rainbow_parentheses.vim'
Plug 'coderifous/textobj-word-column.vim'
Plug 'klen/python-mode'
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar', {'do': 'yarn global add git+https://github.com/ramitos/jsctags.git'}
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/vim-plug-plugins/gocode/vim/symlink.sh'}
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim', {'do': 'brew install ack'}
Plug 'nginx/nginx'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'raimondi/delimitmate'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'shougo/denite.nvim'
Plug 'shougo/deol.nvim'
Plug 'shougo/deoplete.nvim'
Plug 'shougo/neco-syntax'
Plug 'shougo/unite.vim'
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'sirVer/ultisnips'
Plug 'tell-k/vim-autopep8', {'do': 'pip install autopep8'}
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'valloric/MatchTagAlways'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vimjas/vim-python-pep8-indent'
Plug 'xolox/vim-misc'
Plug 'yggdroot/indentline'
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'danro/rename.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'rking/ag.vim', {'do': 'brew install ag'}
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'amix/vim-zenroom2'
Plug 'amix/open_file_under_cursor.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
