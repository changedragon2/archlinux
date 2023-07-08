#!/bin/sh

# load colors
$HOME/.dwm/autostart/bar_themes/onedark

cpu() {
    cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)
    printf "^c$black^ ^b$green^ CPU"
    printf "^c$white^ ^b$grey^ $cpu_val"
}

xsetroot -name "$(cpu)"
