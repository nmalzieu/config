# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx LSCOLORS Gxfxcxdxbxegedabagacad

set -gx VISUAL vim

# Loading functions

set fish_config_path $HOME/.config/fish
. $fish_config_path/functions.fish

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

omf theme robbyrussell
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noemalzieu/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/noemalzieu/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/noemalzieu/Downloads/google-cloud-sdk/path.fish.inc'; end; end
set -g fish_user_paths "/usr/local/opt/v8@3.15/bin" $fish_user_paths
set -g fish_user_paths "~/.rbenv/bin" $fish_user_paths

set -gx PATH '/Users/noemalzieu/.rbenv/shims' $PATH
set -gx PATH '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin' $PATH
set -gx RBENV_SHELL fish
source '/usr/local/Cellar/rbenv/1.1.2/libexec/../completions/rbenv.fish'
command rbenv rehash 2>/dev/null

set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
