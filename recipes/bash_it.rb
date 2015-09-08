bash_it_version = "master"

git "#{Chef::Config[:file_cache_path]}/bash_it" do
  repository node['bash_it']['repository']
  revision bash_it_version
  destination "#{Chef::Config[:file_cache_path]}/bash_it"
  enable_checkout false
  action :sync
end

directory node['bash_it']['dir'] do
  owner node['current_user']
  mode "0777"
end

execute "Copying bash-it's .git to #{node['bash_it']['dir']}" do
  command "rsync -axSH #{Chef::Config[:file_cache_path]}/bash_it/ #{node['bash_it']['dir']}"
  user node['current_user']
end

template node['bash_it']['bashrc_path'] do
  source "bash_it/bashrc.erb"
  cookbook 'dotfiles'
  owner node['current_user']
  mode "0777"
end

node['bash_it']['enabled_plugins'].each do |feature_type, features|
  features.each do |feature_name|
    dotfiles_bash_it_enable_feature "#{feature_type}/#{feature_name}"
  end
end

node['bash_it']['custom_plugins'].each do |cookbook_name, custom_plugins|
  custom_plugins.each do |custom_plugin|
    dotfiles_bash_it_custom_plugin custom_plugin do
      cookbook cookbook_name
    end
  end

  directory  "#{node['bash_it']['dir']}/iterm" do
    owner node['current_user']
    mode 00777
    recursive true
    action :create
  end

  remote_file "#{node['bash_it']['dir']}/iterm/Tomorrow.itermcolors" do
    owner node['current_user']
    source "https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/iTerm2/Tomorrow.itermcolors"
    mode 00777
    action :create_if_missing
  end

  remote_file "#{node['bash_it']['dir']}/iterm/Tomorrow-Night-Eighties.itermcolors" do
    owner node['current_user']
    source "https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/iTerm2/Tomorrow%20Night%20Eighties.itermcolors"
    mode 00777
    action :create_if_missing
  end

end
