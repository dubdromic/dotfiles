pulseaudio --start
setxkbmap -option ctrl:nocaps
xset -b
xset dpms 600 600 600
xsetroot -cursor_name left_ptr
xrdb ~/.Xdefaults
# compton --vsync drm -CG --no-fading-openclose &
# exec /usr/bin/ratpoison
# exec startxfce4
# exec dbus-run-session gnome-shell
exec i3
# exec openbox
