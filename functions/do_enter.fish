function do_enter
  set -l cmd (commandline)
  if test -n "$cmd"
    commandline $cmd
    commandline -f execute
    commandline -f repaint
    return
  end
  printf "\n"
  ls
  git rev-parse --is-inside-work-tree 2> /dev/null | read result
  if test "$result" = "true"
    printf "\n"
    echo -e "\e[0;33m--- git status ---\e[0m"
    git status -sb
  end
  printf "\n\n"
  commandline -f repaint
end
