node.default['bash_it'] ={
  'enabled_plugins' => {
    'aliases'    => %w[atom clipboard fuck general git heroku homebrew-cask homebrew osx vagrant vim],
    'completion' => %w[bash-it brew defaults dirs gh git grunt gulp npm ssh vagrant virtualbox],
    'plugins'    => %w[alias-completion base battery browser dirs explain extract git history jekyll less-pretty-cat node osx proxy ssh]
  },
  'custom_plugins' => {
      "dotfiles" => %w[
        bash_it/custom/ensure_usr_local_bin_first.bash
        bash_it/custom/aliases.bash
        bash_it/custom/base.bash
        bash_it/custom/exports.bash
        bash_it/custom/functions.bash
        bash_it/custom/rbenv.bash
      ]
  },
  'theme' => 'bobby',
  'dir' => '/etc/bash_it',
  'repository' => 'https://github.com/pamo/bash-it.git'
}

if node["platform"] == "ubuntu"
    node.default["bash_it"]["bashrc_path"]="/etc/bash.bashrc"
else
    node.default["bash_it"]["bashrc_path"]="/etc/bashrc"
end
