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
fish_add_path "/Users/noemalzieu/Library/Python/3.8/bin"
fish_add_path "/Users/noemalzieu/.cargo/bin"
fish_add_path "/opt/homebrew/share/android-commandlinetools/"

set -gx NPM_TOKEN '156f8ab1-039f-43cd-9a3d-ff53502e4b98'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noemalzieu/google-cloud-sdk/path.fish.inc' ]; . '/Users/noemalzieu/google-cloud-sdk/path.fish.inc'; end

export PATH="$PATH:/Users/noemalzieu/.starklings/dist/starklings"
export LIBRARY_PATH=/usr/lib:/opt/homebrew/lib

export PATH="$PATH:/Users/noemalzieu/.protostar/dist/protostar"
