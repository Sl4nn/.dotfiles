typeset -U PATH path

# path
path=(
  "$HOME/scripts" 
  "$HOME/.local/bin" 
  "$HOME/.local/share/applications"
  "$path[@]"
)
export PATH

# default apps
export EDITOR="nvim'"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"
export WM="bspwm"
export ZK_NOTEBOOK_DIR="$HOME/documents/zk/"

# other xdg paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CHACHE_HOME=${XDG_CHACHE_HOME:="$HOME/.chache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# preventing files from beeing created
export LESSHISTFILE=-

# setting paths
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export SSB_HOME="$XDG_DATA_HOME"/zoom
export ZDOTDIR=$HOME/.config/zsh
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
