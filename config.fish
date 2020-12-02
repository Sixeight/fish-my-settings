set -x EDITOR vim

# # homebrew
set -x PATH /usr/local/bin $PATH

# go
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH

# plenv
set -x PATH $HOME/.plenv/bin $PATH
. (plenv init - | sed -e 's/setenv/set -gx/' | psub)

# # rbenv
set -x PATH $HOME/.rbenv/bin $PATH
. (rbenv init - | psub)

# nodevn
set -x PATH $HOME/.ndenv/bin $PATH
. (nodenv init - | psub)

# # my path
set -x PATH $HOME/bin $PATH

# # z
set -x Z_DATA $HOME/.z

# Key binding
bind \es 'peco_select_ghq_repository'
bind \cr 'peco_select_history'
bind \er 'peco_select_z'
bind \cm 'do_enter'

# Abbreviations
abbr -a g git
abbr -a s git status -sb
abbr -a d git diff --cached
abbr -a di git diff
abbr -a l git log
abbr -a st git stash
abbr -a pop git stash pop
abbr -a pick git cherry-pick
abbr -a ggrep git grep
abbr -a gs git switch

abbr -a r bin/rails
abbr -a sp bin/spring
abbr -a b bundle
abbr -a be bundle exec

abbr -a e exit
