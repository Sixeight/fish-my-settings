function install-my-settings
  set fish_trace 1

  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  set -l fish_config_home $XDG_CONFIG_HOME/fish
  set -l config_path $fish_config_home/functions/config.fish

  cd $fish_config_home
  ln -s $config_path .
  cd -
end
