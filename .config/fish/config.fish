# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx LSCOLORS Gxfxcxdxbxegedabagacad

set -gx VISUAL vim

set -gx ANDROID_HOME "$HOME/Library/Android/sdk"

set -x LANG en_US.UTF-8

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noemalzieu/google-cloud-sdk/path.fish.inc' ]; . '/Users/noemalzieu/google-cloud-sdk/path.fish.inc'; end

export PATH="$PATH:/Users/noemalzieu/.starklings/dist/starklings"
export LIBRARY_PATH=/usr/lib:/opt/homebrew/lib

export PATH="$PATH:/Users/noemalzieu/.protostar/dist/protostar"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:/Users/noemalzieu/.foundry/bin"

export JAVA_HOME=$(/usr/libexec/java_home -v 17)


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/noemalzieu/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
export PATH="$PATH:/Users/noemalzieu/.local/bin"

# Scaleway CLI autocomplete initialization.
eval (scw autocomplete script shell=fish)

export PATH="$PATH:/Users/noemalzieu/.bifrost/bin"
export PATH="$PATH:/Users/noemalzieu/.avm/bin"
export PATH="/Users/noemalzieu/.local/share/solana/install/active_release/bin:$PATH"
