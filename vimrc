" Ubuntu中vim专用dotfiles

" 输出行号
set number

" 显示代码颜色
syntax on

" 一些方便的映射
let mapleader=","

" 使用<leader>w来保存文件
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" `^保证光标位置不变
inoremap jj <Esc>`^

" 移动windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" 切换标签
nnoremap gh gT 
nnoremap gl gt

" 全选
nnoremap <C-a> ggVG
vnoremap <C-a> <Esc>ggVG

" 复制
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" 粘贴
nnoremap <C-v> "+p
vnoremap <C-v> "+p

" 回车正常的行为
nnoremap <CR> <Insert><CR><ESC>

" BackSpace正常的行为
nnoremap <BS> <Insert><BS><ESC>



call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'preservim/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
call plug#end()



nnoremap <C-t> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'

" easymotion快速查询
nmap ss <Plug>(easymotion-s2)
