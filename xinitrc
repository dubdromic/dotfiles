pulseaudio --start
setxkbmap -option ctrl:nocaps
xset -b
xset dpms 600 600 600
xsetroot -cursor_name left_ptr
xrdb ~/.Xdefaults
exec /usr/bin/ratpoison
