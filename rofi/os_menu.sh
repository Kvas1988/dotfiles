#!/bin/bash

menu_options=$(echo -e "Open Terminal\nRemmina\nSNQ RDP")

selected_option=$(echo -e "$menu_options" | rofi -dmenu "Custom Menu:")

case "$selected_option" in
  "Open Terminal")
    ghostty &;;
  "Remmina")
    remmina &;;
  "SNQ RDP")
    snqrdp &;;
esac
