" highlight code 
syntax on
" filetype support
filetype on
filetype plugin on
filetype indent on
" line number
set number 
set relativenumber
" colors
set termguicolors 
" highlight cursor
set cursorline
set cursorcolumn
" tab == 4 space
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" save time
set updatetime=100
" lua-based config
lua require("plugin")


" keymap
let mapleader='\'
" copy paste
noremap <Leader>y "+y
noremap <Leader>p "+p 
" coding
noremap <Leader>lf :lua vim.lsp.buf.formatting()<cr>
noremap <Leader>lr :lua vim.lsp.buf.rename()<cr>
noremap <Leader>ld :lua vim.diagnostic.open_float()<cr>
" latex preview
autocmd FileType tex noremap <Leader>lp :TexlabForward<cr> 
" file tree
noremap <Leader>ft :NvimTreeToggle<cr> 
" save and exit
noremap <Leader>w :w<cr>
noremap <Leader>q :q<cr>
                        
" buffer switch
noremap <C-b>d :bd<cr>
noremap <C-b><Right> :BufferLineCycleNext<cr>
noremap <C-b><Left> :BufferLineCyclePrev<cr>
