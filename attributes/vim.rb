node.default['dotfiles']['vimusers'] = [node['current_user']]

node.default["dotfiles"]["vim"]["bundle"] = [
  {"sleuth" => "git://github.com/tpope/vim-sleuth.git"},
  {"sensible" => "git://github.com/tpope/vim-sensible.git"},
  {"gitgutter" => "git://github.com/airblade/vim-gitgutter.git"},
  {"airline" => "git@github.com:vim-airline/vim-airline.git"},
  {"syntastic" => "git://github.com/scrooloose/syntastic.git"},
  {"nerdtree" => "https://github.com/scrooloose/nerdtree.git"},
  {"Ag" => "https://github.com/rking/ag.vim"},
  {"titlecase" => "git@github.com:christoomey/vim-titlecase.git"},
  {"surround" => "git://github.com/tpope/vim-surround.git"},
  {"repeat" => "git://github.com/tpope/vim-repeat.git"},
  {"commentary" => "git://github.com/tpope/vim-commentary.git"},
  {"bracketed-paste" => "git://github.com/ConradIrwin/vim-bracketed-paste.git"},
  {"editorconfig" => "git://github.com/editorconfig/editorconfig-vim.git"},
  {"vim-autoformat" => "git@github.com:Chiel92/vim-autoformat.git"},
  {"vim-hyperstyle" => "git@github.com:rstacruz/vim-hyperstyle.git"},
  {"vim-closer" => "git@github.com:rstacruz/vim-closer.git"}
]
