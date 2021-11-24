#!/usr/bin/env bash

intern=eDP-1
extern1=DP-2-2
extern2=DP-2-3

if xrandr | grep "$extern1 connected"; then
  if xrandr | grep "$extern2 connected"; then
    echo "Remember to add extern2 in the mix"
    # xrandr --output $intern --primary --auto --output $extern1 --right-of $intern --auto
  fi
  xrandr --output $intern --primary --auto --output $extern1 --right-of $intern --auto
else
  xrandr --output $intern --auto
fi
