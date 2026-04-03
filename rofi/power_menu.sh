#!/bin/bash

menu_options=$(echo -e "Power OFF\nReboot\nLock Screen\nLogOut")

selected_option=$(echo -e "$menu_options" | rofi -dmenu "Power Menu:")

case "$selected_option" in
  "Power OFF")
    shutdown now &;;
  "Reboot")
    reboot &;;
  "Lock Screen")
    hyprlock &;;
  "LogOut")
    hyprctl dispatch exit &;;
esac
