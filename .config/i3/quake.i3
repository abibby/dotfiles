
define(`QUAKE', `mode "quake $1" {
    bindsym Escape exec popup.sh close "$quake"
    bindsym $2     exec popup.sh close "$quake"
}
bindsym $2 exec popup.sh open "quake $1" "ifelse($3, , `$quake', `$quake -e $3')"')

## quick terminal
for_window [instance="quake_term"] floating enable;
# set $quake kitty --name quake_term
# set $quake xst -n quake_term
set $quake alacritty --class quake_term