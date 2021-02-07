function fish_right_prompt
  set -l ruby_version (rbenv version-name)
  set -l node_version (nodenv version-name)
  echo -n "$ruby_version / $node_version |" (date +%H:%M)
end
