"
" general Haskell source settings
" (shared functions are in autoload/haskellmode.vim)
"
" (Claus Reinke, last modified: 28/04/2009)
"
" part of haskell plugins: http://projects.haskell.org/haskellmode-vim
" please send patches to <claus.reinke@talk21.com>

" try gf on import line, or ctrl-x ctrl-i, or [I, [i, ..
setlocal include=^import\\s*\\(qualified\\)\\?\\s*
setlocal includeexpr=substitute(v:fname,'\\.','/','g').'.'
setlocal suffixesadd=hs,lhs,hsc

" neco-ghc plugin: omni-completion
setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1
map ,c :s/^/-- /<CR>
map ,u :s/^-- //<CR>

set conceallevel=0

" Format haskell code
command FormatCode %!stylish-haskell
