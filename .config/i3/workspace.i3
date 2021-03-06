
# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1  "1"
set $ws2  "2"
set $ws3  "3"
set $ws4  "4"

set $ws5  "5"
set $ws6  "6"
set $ws7  "7"
set $ws8  "8"

set $ws9  "9"
set $ws10 "10"
set $ws11 "11"
set $ws12 "12"

set $leftMonitor   DVI-D-1-1 eDP-1 eDP1 eDP-1
set $centerMonitor DVI-D-1-1 DP-2  eDP1 eDP-1
set $rightMonitor  HDMI-1    DP-1  eDP1 eDP-1

workspace $ws1  output $leftMonitor
workspace $ws2  output $leftMonitor
workspace $ws3  output $leftMonitor
workspace $ws4  output $leftMonitor
 
workspace $ws5  output $centerMonitor
workspace $ws6  output $centerMonitor
workspace $ws7  output $centerMonitor
workspace $ws8  output $centerMonitor
 
workspace $ws9  output $rightMonitor
workspace $ws10 output $rightMonitor
workspace $ws11 output $rightMonitor
workspace $ws12 output $rightMonitor

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

bindsym $mod+F1  workspace $ws1
bindsym $mod+F2  workspace $ws2
bindsym $mod+F3  workspace $ws3
bindsym $mod+F4  workspace $ws4
bindsym $mod+F5  workspace $ws5
bindsym $mod+F6  workspace $ws6
bindsym $mod+F7  workspace $ws7
bindsym $mod+F8  workspace $ws8
bindsym $mod+F9  workspace $ws9
bindsym $mod+F10 workspace $ws10
bindsym $mod+F11 workspace $ws11
bindsym $mod+F12 workspace $ws12

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1  
bindsym $mod+Shift+2 move container to workspace $ws2  
bindsym $mod+Shift+3 move container to workspace $ws3  
bindsym $mod+Shift+4 move container to workspace $ws4  
bindsym $mod+Shift+5 move container to workspace $ws5  
bindsym $mod+Shift+6 move container to workspace $ws6  
bindsym $mod+Shift+7 move container to workspace $ws7  
bindsym $mod+Shift+8 move container to workspace $ws8  
bindsym $mod+Shift+9 move container to workspace $ws9  
bindsym $mod+Shift+0 move container to workspace $ws10 

bindsym $mod+Shift+F1  move container to workspace $ws1
bindsym $mod+Shift+F2  move container to workspace $ws2
bindsym $mod+Shift+F3  move container to workspace $ws3
bindsym $mod+Shift+F4  move container to workspace $ws4
bindsym $mod+Shift+F5  move container to workspace $ws5
bindsym $mod+Shift+F6  move container to workspace $ws6
bindsym $mod+Shift+F7  move container to workspace $ws7
bindsym $mod+Shift+F8  move container to workspace $ws8
bindsym $mod+Shift+F9  move container to workspace $ws9
bindsym $mod+Shift+F10 move container to workspace $ws10
bindsym $mod+Shift+F11 move container to workspace $ws11
bindsym $mod+Shift+F12 move container to workspace $ws12