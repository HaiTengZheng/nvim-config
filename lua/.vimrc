" auto indent
set autoindent
set cindent

" turn off error alerts
set noeb

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" line number
set number

" history number
set history=1000

" ======================================================================================================================================
" vimTex configure
" filetype plugin indent on " plugin manager will do it 
" vimTeX features
syntax enable
" viewer methods
let g:vimtex_view_method='zathura'
let g:tex_flavor='latex'
let g:vimtex_compiler_method='latexmk'
let g:vimtex_compiler_latexmk_engines={'_':'-xelatex'}
let g:vimtex_quickfix_mode=0
let g:vimtex_view_enabled=1


" ======================================================================================================================================
" snips
let g:UltiSnipsSnippetDirectories=["UltiSnips"] " snippets definition directory
let g:UltiSnipsExpandTrigger='<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger='<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'  " use Shift-Tab to move backward through tabstops
let g:UltiSnipsEditSplit='horizontal' " split windows horizontally

" ======================================================================================================================================
" vim-plug
" plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' 
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'SirVer/ultisnips'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ======================================================================================================================================
" gruvbox theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" ======================================================================================================================================
" airline theme
let g:airline_theme='gruvbox'

" ======================================================================================================================================
" tex-conceal
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none


