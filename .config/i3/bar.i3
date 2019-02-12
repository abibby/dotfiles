# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    position top
    status_command i3blocks

    font pango:Liberation Mono 10

    colors {
        background $background
        statusline $foreground
        separator #666666
                           #border #back       #text
        focused_workspace  $grey   $blue       $black
        active_workspace   $grey   $background $white
        inactive_workspace $grey   $background $white
        urgent_workspace   $grey   $red        $black
        binding_mode       #2f343a #900000 #ffffff
    }  
} 