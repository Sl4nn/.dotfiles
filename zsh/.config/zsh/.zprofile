# STARTING X SERVER
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep bspwm || startx
fi

# Sourcing plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh
eval "$(starship init zsh)"
