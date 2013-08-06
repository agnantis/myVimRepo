"http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
"identation
set sw=2
"autocomplete better functionality in \ref{fig:<C-n>
set iskeyword+=:
"
"set compile command
let g:Tex_CompileRule_pdf = 'xelatex -output-directory=output $*'
"set viewr command
let g:Tex_ViewRuleComplete_pdf = 'gnome-open output/$*.pdf'
"set target
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats ='pdf, aux'
"set no auto folding. use \rf instead
let g:Tex_AutoFolding = 0
