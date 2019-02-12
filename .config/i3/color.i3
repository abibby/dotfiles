
set_from_resource $background i3wm.background #000000
set_from_resource $foreground i3wm.foreground #ffffff

set_from_resource $black   i3wm.color0 #000000
set_from_resource $red     i3wm.color1 #800000
set_from_resource $green   i3wm.color2 #008000
set_from_resource $yellow  i3wm.color3 #808000
set_from_resource $blue    i3wm.color4 #000080
set_from_resource $magenta i3wm.color5 #800080
set_from_resource $cyan    i3wm.color6 #008080
set_from_resource $white   i3wm.color7 #c0c0c0

set_from_resource $bold_black   i3wm.color8 #808080
set_from_resource $bold_red     i3wm.color9 #ff0000
set_from_resource $bold_green   i3wm.color10 #00ff00
set_from_resource $bold_yellow  i3wm.color11 #ffff00
set_from_resource $bold_blue    i3wm.color12 #0000ff
set_from_resource $bold_magenta i3wm.color13 #ff00ff
set_from_resource $bold_cyan    i3wm.color14 #00ffff
set_from_resource $bold_white   i3wm.color15 #ffffff


# class                 border  backgr. text    indicator   child_border
# the thing you are looking at
client.focused          #4c7899 #285577 #ffffff $blue       $blue
# focuesd on another monitor
client.focused_inactive #ff0000 #0ff000 #00ff00 $background $background
# unfocused on any screen
client.unfocused        #0000ff #222222 #888888 $background $background
client.urgent           #2f343a #900000 #ffffff $red        $red
client.placeholder      #000000 #0c0c0c #ffffff #000000     #0c0c0c

client.background       #ffffff