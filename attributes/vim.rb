node.default['dotfiles']['vimusers'] = [node['current_user']]

node.default["dotfiles"]["vim"]["bundle"] = [
  {"ag.vim" => "https://github.com/rking/ag.vim"},
  {"ctrlp" => "git@github.com:ctrlpvim/ctrlp.vim.git"}
  {"editorconfig-vim" => "git://github.com/editorconfig/editorconfig-vim.git"},
  {"nerdtree" => "https://github.com/scrooloose/nerdtree.git"},
  {"syntastic" => "git://github.com/scrooloose/syntastic.git"},
  {"vim-airline" => "git@github.com:vim-airline/vim-airline.git"},
  {"vim-autoformat" => "git@github.com:Chiel92/vim-autoformat.git"},
  {"vim-bracketed-paste" => "git://github.com/ConradIrwin/vim-bracketed-paste.git"},
  {"vim-closer" => "git@github.com:rstacruz/vim-closer.git"},
  {"vim-commentary" => "git://github.com/tpope/vim-commentary.git"},
  {"vim-gitgutter" => "git://github.com/airblade/vim-gitgutter.git"},
  {"vim-hyperstyle" => "git@github.com:rstacruz/vim-hyperstyle.git"},
  {"vim-jsbeautify" => "git@github.com:maksimr/vim-jsbeautify.git"},
  {"vim-repeat" => "git://github.com/tpope/vim-repeat.git"},
  {"vim-sensible" => "git://github.com/tpope/vim-sensible.git"},
  {"vim-sleuth" => "git://github.com/tpope/vim-sleuth.git"},
  {"vim-surround" => "git://github.com/tpope/vim-surround.git"},
  {"vim-titlecase" => "git@github.com:christoomey/vim-titlecase.git"}
]
