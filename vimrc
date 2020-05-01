call plug#begin()
Plug 'pearofducks/ansible-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

syntax enable
set background=dark
colorscheme solarized

" syntax enable
" set background=light
" colorscheme solarized

" Numbers
set number

" Fold
set foldmethod=marker

" Fix backspace "Can't delete anything that was not typed during your curret insert mode session
set backspace=indent,eol,start

set list 
set listchars=tab:▸\ ,eol:¬

set autoindent
set complete-=i
set showmatch
set smarttab

set et
set tabstop=4
set shiftwidth=4
set expandtab

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1

" File Browser
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
" augroup END

" ansible-vim
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab
"
" Markdown highlight for my *.md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Markdown Export to pdf 
"autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf --listings<Enter><Enter>
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf --from markdown --template eisvogel --listings<Enter><Enter>

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab

" html, css, and js indent
autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
