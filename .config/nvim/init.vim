set relativenumber
set noswapfile
set mouse=a
set nu
set scrolloff=3
set shiftwidth=4

let g:mapleader="\\"
let g:python3_host_prog="/usr/bin/python3"
let g:python2_host_prog="/usr/bin/python2"

" 回到上一次位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
" https://github.com/junegunn/vim-plug
" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
" https://vimzijun.net/2016/10/30/ultisnip/
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" On-demand loading



Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '$HOME/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
command! -bang -nargs=* LinesWithPreview
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
    \   fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --no-sort'}, 'up:50%', '?'),
    \   1)
nnoremap ? :LinesWithPreview<CR>





Plug 'kien/rainbow_parentheses.vim'




"安装插件
Plug 'ferrine/md-img-paste.vim',{'for':'markdown'}
"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
let g:mdip_imgdir = 'pic'
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
"autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>



Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'



"安装插件
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
let g:vim_markdown_math = 1



Plug 'iamcco/markdown-preview.nvim'
let g:mkdp_path_to_chrome = "/usr/bin/google-chrome-stable"



Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
