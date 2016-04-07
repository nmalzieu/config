# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

set -Ux LSCOLORS Gxfxcxdxbxegedabagacad

# Loading functions

set fish_config_path $HOME/.config/fish
. $fish_config_path/functions.fish
. $fish_config_path/shared_functions.fish

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

omf theme robbyrussell
