# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

# Helpful links
# FontAwesome cheatsheet https://fontawesome.com/cheatsheet

# Mod1 = Alt
# Mod4 = Super
set $mod Mod4

# set $term xst
set $term alacritty

gaps inner 10
# gaps outer 15

smart_gaps on 

for_window [class=".*"] border pixel 4
hide_edge_borders both

for_window [class="albert"] border pixel 0

include(`color.i3')

focus_follows_mouse no

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# font pango:monospace 10

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 11

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
# bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec $term

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+r exec rofi -show drun
# bindsym $mod+r exec albert show


# change focus
bindsym $mod+a focus left
bindsym $mod+s focus down
bindsym $mod+w focus up
bindsym $mod+d focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+a move left
bindsym $mod+Shift+s move down
bindsym $mod+Shift+w move up
bindsym $mod+Shift+d move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
# bindsym $mod+s layout stacking
# bindsym $mod+w layout tabbed
bindsym $mod+q layout toggle split

# toggle tiling / floating
# bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
# bindsym $mod+space focus mode_toggle

# focus the parent container
# bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

include(`workspace.i3')

# reload the configuration file
bindsym $mod+Shift+c exec "make -C ~/.config/i3 && i3-msg reload"
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r exec "make -C ~/.config/i3 && i3-msg restart"
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

bindsym $mod+Ctrl+a resize shrink width 10 px or 10 ppt
bindsym $mod+Ctrl+s resize grow height 10 px or 10 ppt
bindsym $mod+Ctrl+w resize shrink height 10 px or 10 ppt
bindsym $mod+Ctrl+d resize grow width 10 px or 10 ppt

bindsym $mod+Ctrl+Left resize shrink width 10 px or 10 ppt
bindsym $mod+Ctrl+Down resize grow height 10 px or 10 ppt
bindsym $mod+Ctrl+Up resize shrink height 10 px or 10 ppt
bindsym $mod+Ctrl+Right resize grow width 10 px or 10 ppt


include(`bar.i3')

# adams stuff
include(`quake.i3')

QUAKE(zsh, $mod+grave)
QUAKE(math, $mod+m, `qalc')
QUAKE(php, $mod+p, `psysh')
QUAKE(js, $mod+j, `node')
QUAKE(cal, $mod+k, `calread')

bindsym $mod+e exec emoji
bindsym $mod+c exec code
# bindsym $mod+b exec brave
bindsym $mod+b exec firefox
bindsym $mod+t exec --no-startup-id $term -e htop
# bindsym $mod+x exec $term -e ranger
bindsym $mod+x exec nautilus

bindsym $mod+Shift+p exec gnome-screenshot -a -c

bindsym $mod+u exec cat ~/.config/adam/bookmarks | sort | rofi -dmenu -i -p sites | xargs -r surf
bindsym $mod+Shift+b exec find ~/Pictures/wallpapers -type f | rofi -dmenu -i -p Wallpaper > ~/.config/adam/wallpaper && feh --bg-fill "$(cat ~/.config/adam/wallpaper)"

bindsym $mod+Shift+l exec find ~/.screenlayout -type f | rofi -dmenu -i -p Layout | xargs -r sh && i3-msg restart

# music control
bindsym $mod+space exec playerctl play-pause
bindsym $mod+comma exec playerctl previous
bindsym $mod+period exec playerctl next
bindsym $mod+minus exec changeVolume 2dB- unmute
bindsym $mod+equal exec changeVolume 2dB+ unmute
bindsym $mod+l exec listAudioOutputs > ~/lao.log 2>&1

bindsym $mod+Shift+minus exec changeBrightness -dec 10
bindsym $mod+Shift+equal exec changeBrightness -inc 10

# AUTOSTART
exec_always --no-startup-id feh --bg-fill "$(cat ~/.config/adam/wallpaper)"
exec_always --no-startup-id comp
exec --no-startup-id numlockx on &
exec --no-startup-id xrdb ~/.Xresources
exec --no-startup-id pasystray &
