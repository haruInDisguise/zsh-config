# General
export EDITOR="nvim"
export VISUAL="$EDITOR"
export BROWSER="firefox-developer-edition"

# Being explicit about the defaults...
# See: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# A bit more comprehensible: https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# The following directories are not defined
# by the standart (above url), but not everybody listens,
# and/or this is an undocumented feature/expansion.
# It is even more likely, that I'm just stupid.
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_DOWNLOADS_DIR="$HOME/downloads"
export XDG_DESKTOP_DIR="/dev/null"

# Shell
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Cargo/Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# X11
export XAUTHORITY="$XDG_CACHE_HOME/.Xauthority"
# Overwritten by the startx helper script
# export XINITRC="$XDG_CONFIG_HOME/xorg/xinitrc"

# Git
export GIT_REVIEW_BASE="main"
export GIT_PAGER="bat"

# NodeJS - npm global modules/config
export npm_config_prefix="$XDG_DATA_HOME/npm"

# DenoJS
export DENO_DIR="$XDG_CACHE_HOME/deno"
export DENO_INSTALL_ROOT="$XDG_DATA_HOME/deno/bin"

# Go
export GOPATH="$XDG_DATA_HOME/go"

# Other
export PROXYCHAINS_CONF_FILE="$XDG_CONFIG_HOME/proxychains/proxychains.conf"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export WINEPREFIX="$XDG_DATA_HOME/wine/pfx/default"

export LESSHISTFILE="$XDG_DATA_HOME/lesshist"
export LESSHISTSIZE=100

# Pager for man with some color changes
export MANPAGER='less -R --use-color -Dur$Dd+c$Dsy$DPw'
export MANROFFOPT='-c'

# GNU GPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GPG_TTY="$(tty)"

# GNU GDB
export GDBHISTORYPATH="$XDG_CACHE_HOME/gdb/gdbhist"

# Fixing "bugs" in dwm... see dwm(1)
export _JAVA_AWT_WM_NONREPARENTING=1

# PATH
_BIN_USER="$HOME/.local/bin"
_BIN_CARGO="$CARGO_HOME/bin"
_BIN_NPM="$npm_config_prefix/bin"

export PATH="$_BIN_USER:$_BIN_NPM:$_BIN_CARGO:$DENO_INSTALL_ROOT:$PATH"
unset _BIN_CARGO _BIN_NPM _BIN_USER

# Personal exports for script mangement... AHHHAH
export USER_CONFIG_XORG_REDSHIFT_LOCATION='52.3127:13.3427'
export USER_CONFIG_DOTFILES_ROOT="$HOME/dotfiles"
export USER_CONFIG_SCRIPTS_ROOT="$USER_CONFIG_DOTFILES_ROOT/bin/user_scripts"

PATH="$USER_CONFIG_SCRIPTS_ROOT/bin:$PATH"
PATH="$USER_CONFIG_SCRIPTS_ROOT/scripts:$PATH"

