# archaei : adding paths and shell dir to envvar
export SHELLS_DIR="$HOME/.config/shells/"
export PATH=$SHELLS_DIR/scripts/:$HOME/.local/bin:$PATH

# archaei : zsh envvar
export ZDOTDIR="$SHELLS_DIR/zsh/"

# archaei : omz exclusive; Path to your oh-my-zsh installation.
export ZSH="$SHELLS_DIR/oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# archaei : set XDG paths
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# archaei : set more env for XDG compliance
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export _Z_DATA="$XDG_CONFIG_HOME/z"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# archaei : npm
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm
