#!/bin/sh
# ~/.xinitrc - Direct XFCE startup for Arch Linux
# This file bypasses session selection and starts XFCE directly

# ===== Phase 1: System Resource Loading =====
# These configure how X applications look and behave
# They must be loaded before starting any GUI applications

# Load system-wide X resources if they exist
# These might set things like font rendering hints or DPI
if [ -f /etc/X11/xinit/.Xresources ]; then
    xrdb -merge /etc/X11/xinit/.Xresources
fi

# Load personal X resources
# This is where you'd customize things like terminal colors or cursor themes
if [ -f "$HOME/.Xresources" ]; then
    xrdb -merge "$HOME/.Xresources"
fi

# ===== Phase 2: System Integration Scripts =====
# These scripts set up the modern plumbing that desktop environments need
# We run them exactly as the system xinitrc would

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        # Check if the file is executable before sourcing it
        if [ -x "$f" ]; then
            # Source it in our current shell context
            # This runs scripts like 50-systemd-user.sh that you found
            . "$f"
        fi
    done
    unset f  # Clean up our loop variable
fi

# ===== Phase 3: Session Bus Configuration =====
# Modern desktops need D-Bus for inter-process communication
# This is how different parts of your desktop talk to each other

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    # No session bus is running, so we need to start one
    if command -v dbus-launch >/dev/null 2>&1; then
        # This starts D-Bus and exports the necessary variables
        # The --exit-with-session flag means D-Bus dies when our session ends
        eval "$(dbus-launch --sh-syntax --exit-with-session)"
    fi
fi


# ===== Phase 4: Monitor and Display Configuration =====
# Configure monitors (27" left, 32" right)
xrandr --output HDMI-0 --mode 3840x2160 --pos 0x0 --scale 1x1
xrandr --output DP-0 --mode 3840x2160 --pos 3840x0 --scale 1x1 --primary

# Set DPI for 4K
xrandr --dpi 144
echo "Xft.dpi: 144" | xrdb -merge

# Tell systemd that graphical session is ready (for redshift service)
systemctl --user import-environment DISPLAY XAUTHORITY
systemctl --user start graphical-session.target

gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Whitesur-icons-dark'

picom -b &
sxhkd &
dunst &
udiskie --tray &
/home/ben/.config/polybar/launch.sh &
exec openbox-session
