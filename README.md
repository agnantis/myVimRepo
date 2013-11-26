myVimRepo
=========

My super-duper vim configuration...

Currently, it is mainly configured for:
 * Coding in then best language of the whole universe (a.k.a Haskell)
 * Writing docs using LaTeX (best "text processor" of the whole universe??)

Installation instructions
-------------------------

1. Clone repository: git clone https://www.github.com/agnadis/myVimRepo
2. Remove any existing .vim .vimrc from your home dir
   `cd ; rm -rf .vimrc .vim`
3. Create symbolic links to repos files
   `ln -s /path/to/git/repo/.vimrc .vimrc`
   `ln -s /path/to/git/repo/.vim .vim`
4. Depending on your OS architecture cp corresponding file:
   `cd path/to/git/repo/.vim/autoload`
   for 32bit: `cp linux32/vimproc_unix.so .`
   for 64bit: `cp linux64/vimproc_unix.so .`



