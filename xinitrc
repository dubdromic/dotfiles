if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

pulseaudio --start
setxkbmap -option ctrl:nocaps
xset -b
xset dpms 600 600 600
xsetroot -cursor_name left_ptr
xrdb ~/.Xdefaults
~/.fehbg
# compton --vsync drm -CG --no-fading-openclose &
# exec /usr/bin/ratpoison
# exec startxfce4
# exec dbus-run-session gnome-shell
exec i3
# exec openbox
