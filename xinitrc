while true; do
  $HOME/Bin/status
  sleep 30s
done &

pulseaudio --start
setxkbmap -option ctrl:nocaps
xset -b
xsetroot -cursor_name left_ptr
xrdb ~/.Xdefaults
exec dwm
