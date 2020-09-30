function install-my-settings
  set -q XDG_DATA_HOME; or set XDG_DATA_HOME ~/.local/share
  set -l fisher_data $XDG_DATA_HOME/fisher
  set -l repository github.com/Sixeight/fish-my-settings
  set -l data_path $fisher_data/$repository

  cd $data_path
  make install
  cd -
end
