function peco_select_z
  set -l query (commandline)

  if test -n "$query"
    set peco_flags --query "$query"
  end

  z -l | awk '{ print $2 }' | peco $peco_flags | read line

  if [ $line ]
    z $line
    commandline -f repaint
  end
end
