
set $nord0 #2e3440
set $nord1 #3b4252
set $nord2 #434c5e
set $nord3 #4c566a
set $nord4 #d8dee9
set $nord5 #e5e9f0
set $nord6 #eceff4
set $nord7 #8fbcbb
set $nord8 #88c0d0
set $nord9 #81a1c1
set $nord10 #5e81ac
set $nord11 #bf616a
set $nord12 #d08770
set $nord13 #ebcb8b
set $nord14 #a3be8c
set $nord15 #b48ead

set $background #2e3440
set $foreground #d8dee9

set $black   #3b4252
set $red     #bf616a
set $green   #a3be8c
set $yellow  #ebcb8b
set $blue    #81a1c1
set $magenta #b48ead
set $cyan    #88c0d0
set $white   #e5e9f0

set $bold_black   #3b4252
set $bold_red     #bf616a
set $bold_green   #a3be8c
set $bold_yellow  #ebcb8b
set $bold_blue    #81a1c1
set $bold_magenta #b48ead
set $bold_cyan    #88c0d0
set $bold_white   #e5e9f0

# class                 border  backgr. text    indicator   child_border
# the thing you are looking at
client.focused          $blue $blue $blue $blue $blue
# focuesd on another monitor
client.focused_inactive $background $background $background $background $background
# unfocused on any screen
client.unfocused        $background $background $background $background $background
client.urgent           $red        $red        $red        $red        $red
client.placeholder      $green      $green      $green      $green      $green

client.background       $background