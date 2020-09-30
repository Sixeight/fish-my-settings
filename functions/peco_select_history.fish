function peco_select_history
  set -l query (commandline)

  if test -n "$query"
    set peco_flags --query "$query"
  end

  history | peco $peco_flags | read line

  if [ $line ]
    printf "\n\n"
    commandline $line
    commandline -f repaint
  end
end
