"Automatic install plugins when there is no plugin installed from vimenter
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	au VimEnter * PlugInstall --sync | so $MYVIMRC
endif

"Vim-plug
call plug#begin('~/.vim/vim-plug-plugins')

Plug 'andrewradev/splitjoin.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'carlitux/deoplete-ternjs', {'do': 'yarn global add tern'}
Plug 'chemzqm/wxapp.vim'
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'docker/docker'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'epilande/vim-react-snippets'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'gorodinskiy/vim-coloresque'
Plug 'haya14busa/incsearch.vim'
Plug 'herringtonDarkholme/yats.vim'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-xmark'
Plug 'justinmk/vim-sneak'
Plug 'klen/python-mode'
Plug 'leafgarland/typescript-vim', {'do': 'yarn global add tsc'}
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar', {'do': 'yarn global add git+https://github.com/ramitos/jsctags.git'}
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/vim-plug-plugins/gocode/vim/symlink.sh'}
Plug 'mhartington/nvim-typescript', {'do': 'cd ./rplugin/node/nvim_typescript && yarn install && yarn build'}
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim', {'do': 'brew install ack'}
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'nginx/nginx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'raimondi/delimitmate'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'shougo/denite.nvim'
Plug 'shougo/deoplete.nvim'
Plug 'shougo/neco-syntax'
Plug 'shougo/unite.vim'
Plug 'shougo/vimfiler.vim', {'do': 'brew install rmtrash'}
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'sirVer/ultisnips'
Plug 'tell-k/vim-autopep8', {'do': 'pip install autopep8'}
Plug 'ternjs/tern_for_vim', {'do': 'yarn global add tern'}
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
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
Plug 'w0rp/ale', {'do': 'yarn global add eslint prettier-eslint prettier'}
Plug 'wesQ3/vim-windowswap'
Plug 'xolox/vim-misc'
Plug 'yggdroot/indentline'
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'zchee/deoplete-jedi'

"Load after above plugins XD
Plug 'ryanoasis/vim-devicons'

call plug#end()
