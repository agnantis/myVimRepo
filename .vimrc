" pathogen
execute pathogen#infect()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set t_Co=16 "solarized color theme to work
set background=light
colorscheme solarized
set cursorline
set laststatus=2
set foldlevelstart=20
" disable bells
set noeb vb t_vb=

" This assumes that ghc is in your path, if it is not, or you
" wish to use a specific version of ghc, then please change
" the ghc below to a full path to the correct one
au BufEnter *.hs compiler ghc

" For this section both of these should be set to your
" browser and ghc of choice, I used the following
" two vim lines to get those paths:
" :r!which google-chrome
" :r!which ghc
let g:haddock_browser = "/usr/bin/firefox"
let g:ghc = "/usr/bin/ghc"
let g:haddock_docdir = "/usr/share/doc/ghc-doc/html/"

" ghc-mod plugin
" every time you save an *.hs file, it's getting compiled and linted
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" use necoghc autocopletion
" setlocal omnifunc=necoghc#omnifunc
" let g:necoghc_enable_detailed_browse = 1
" let g:acp_enableAtStartup = 0

" Eclipse like autocomplition. For some reason terminal
" interprets C-Space as C-@
" Use <C-x><C-u> for fuller autocompletion
inoremap <expr><TAB>  pumvisible() ? "\<CR>" : "\<TAB>"
imap <C-Space> <C-x><C-o><Down>
imap <C-@> <C-Space>
imap <expr><Space> pumvisible() ? "\<CR> " : "\<Space>"
set completeopt+=menu,preview,longest
" use this to not autocomplete each time you move the cursor
let g:neocomplcache_disable_auto_complete=1
let $PATH = $PATH . ':' . expand("~/.cabal/bin")

" neoComplCache plugin
let g:neocomplcache_enable_at_startup = 1

" change to color of the backgroun
map <F2> :set background=light<CR>
map <F3> :set background=dark<CR>
map <F4> :NERDTreeToggle<CR>

""""""""""""""
" tmux fixes "
""""""""""""""
" Handle tmux $TERM quirks in vim
" http://stackoverflow.com/questions/8604150/with-term-screen-256color-under-tmux-home-and-end-keys-dont-work-why
if $TERM =~ '^screen-256color'
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif

" git integration in status line
function! GitBranch()
    let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
    if branch != ''
        return '   Git Branch: ' . substitute(branch, '\n', '', 'g')
    endif
    return ''
endfunction

function! CurDir()
    return substitute(getcwd(), '/home/konstantine/', "~/", "g")
endfunction

" Format the statusline
" Intruduces bug with curson movement: strange chars were printed
" set statusline=\%F%m%r%h\%w\ \ cwd:\%r%{CurDir()}%h\ \%=\ %{GitBranch()}\ \|\ \Pos:\%l,\%c\ \(\%L)\ \ \%P

imap jj <Esc>
