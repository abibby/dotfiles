bindsym $mod+Shift+z mode "subscript"

mode "subscript" {
    bindsym --release 0 exec --no-startup-id xdotool type "₀"
    bindsym --release 1 exec --no-startup-id xdotool type "₁"
    bindsym --release 2 exec --no-startup-id xdotool type "₂"
    bindsym --release 3 exec --no-startup-id xdotool type "₃"
    bindsym --release 4 exec --no-startup-id xdotool type "₄"
    bindsym --release 5 exec --no-startup-id xdotool type "₅"
    bindsym --release 6 exec --no-startup-id xdotool type "₆"
    bindsym --release 7 exec --no-startup-id xdotool type "₇"
    bindsym --release 8 exec --no-startup-id xdotool type "₈"
    bindsym --release 9 exec --no-startup-id xdotool type "₉"

    bindsym Escape mode "default"
}
