source ~/.vim/init.vim

if filereadable(glob("~/.vimrc_local"))
  source ~/.vimrc_local
endif
