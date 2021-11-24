if xrandr --query | grep '\bconnected\b' | grep '^DP1' ; then
  xrdb -I$HOME ~/.Xresources
else
  xrdb -I$HOME ~/.Xresources.second
fi
sxhkd &
exec bspwm
