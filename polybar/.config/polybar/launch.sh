#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

bar_config=/home/$USER/.config/polybar/config.ini

primary=$(xrandr -q | grep -w connected | grep -w primary | cut -d " " -f1)
other=$(xrandr -q | grep -w connected | grep -v primary | cut -d " " -f1)

# Launch on primary
monitor=$primary polybar --reload -c $bar_config main &
sleep 1

# for m in $other; do
#   monitor=$m polybar --reload -c $bar_config main &
# done




# Launch bar
# polybar internal &
#
# my_laptop_external_monitor=$(xrandr --query | grep 'HDMI2')
# if [[ $my_laptop_external_monitor = *connected* ]]; then
#     polybar external &
# fi
