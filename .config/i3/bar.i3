# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)

# for cal
for_window [class="Yad"] floating enable

bar {
    position top
    
    status_command $HOME/go/bin/i3gobar
    # status_command i3blocks
    

    colors {
        background $background
        statusline $foreground
        separator  $foreground
                           #border     #back       #text
        # focused_workspace  $foreground $foreground $background
        # active_workspace   $foreground $background $foreground
        focused_workspace  $blue       $blue       $background
        active_workspace   $blue       $background $foreground
        inactive_workspace $background $background $foreground
        urgent_workspace   $red        $red        $background
    }  
} 