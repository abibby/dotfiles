
define(`QUAKE', `mode "quake_$1" {
    bindsym Escape exec ~/bin/popup.sh close "$quake"
    bindsym $2     exec ~/bin/popup.sh close "$quake"
}
bindsym $2 exec ~/bin/popup.sh open "quake_$1" "ifelse($3, , `$quake', `$quake -e $3')"')

## quick terminal
for_window [instance="quake_term"] floating enable;
set $quake xst -n quake_term