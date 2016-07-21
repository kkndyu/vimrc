" copy to ~/.vim/after/syntax/c/c.vim for .c
" copy to ~/.vim/after/syntax/cpp/c.vim for .h

" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
highlight def link cCustomFunc Function
