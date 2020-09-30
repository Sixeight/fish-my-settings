# original: https://github.com/hitode909/dotfiles/blob/master/zshrc
# jump repository top
function u -a path
    git rev-parse --show-cdup | read dir
    cd ./$dir
    if test -n "$path"
        cd $path
    end
end
