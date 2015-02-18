set -Ux fish_theme robbyrussell
set -Ux LSCOLORS Gxfxcxdxbxegedabagacad

# Loading functions

set fish_config_path $HOME/.config/fish
. $fish_config_path/functions.fish
. $fish_config_path/shared_functions.fish

# Loading oh my fish config

set fish_path $HOME/.oh-my-fish
. $fish_path/oh-my-fish.fish

