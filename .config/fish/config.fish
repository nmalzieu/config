# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx LSCOLORS Gxfxcxdxbxegedabagacad

set -gx VISUAL vim

# Load brew
eval (/opt/homebrew/bin/brew shellenv)

# Loading functions

set fish_config_path $HOME/.config/fish
. $fish_config_path/functions.fish


# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

omf theme robbyrussell
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

set -gx NPM_TOKEN '156f8ab1-039f-43cd-9a3d-ff53502e4b98'
