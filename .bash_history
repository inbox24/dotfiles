pacman -Qe
sudo pacman -Rns fwupdmgr bluez
sudo pacman -Rns fwupd bluez
sudo pacman -Rns blue
sudo reboot
cat .config/polybar/config.ini 
cat .config/polybar/launch.sh 
cat .xinitrc 
ls .conf
ls .config
cat .config/sxhkd/sxhkdrc 
cat .config/rofi/config.rasi 
ps aux | grep polybar
polybar
.config/polybar/launch.sh &
startx
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-gtk
sudo reboot
startx /home/ben/.xinitrc 
# See what startxfce4 actually is
which startxfce4
cat $(which startxfce4)
clear
# Check if xfce4-session has a chooser enabled
xfconf-query -c xfce4-session -lv | grep -i chooser
xfconf-query -c xfce4-session -lv | grep -i display
# Add this right before exec startxfce4
echo "About to start XFCE..." >> /tmp/xinitrc.log
echo "Display: $DISPLAY" >> /tmp/xinitrc.log
xfconf-query -c xfce4-session -p /chooser/AlwaysDisplay -s false
sudo reboot
rofi --show drun
rofi -show drun
startx
ls /usr/share/applications/ | grep -i firefox
ls ~/.local/share/applications/
mkdir -p .config/foxbackup/{firefox,waterfox,librefox,chromium}
sxhkd --help
sudo pacman -Syyu
chromium
sudo suspend
sudo systemctl suspend
cat .bash_profile 
mkdir .config/foxbackup
cd .config/foxbackup/
ls
cd ..
ls
ls -a
cd ..
ls
ls -a
cd .mozilla/
ls
tree
ls
ls -a
cd firefox/
ls
cd oorbnrtd.default-release/
ls
ls -a
cp -r extensions/ extension*.json prefs.js places.sqlite ~/.config/foxbackup/firefox/
cd ~/.config/
ls
cd ..
ls
cd .waterfox/
ls
cd pv3vzbp1.default-release/
ls
cp -r extensions/ extension*.json prefs.js places.sqlite ~/.config/foxbackup/waterfox/
thunar
xfconf-query -c xfce4-keyboard-shortcuts -lv | less
sudo pacman -S openbox
mkdir -p ~/.config/openbox
cp /etc/xdg/openbox/* ~/.config/openbox/
vim ~/.xinitrc 
cd ~
vim .config/openbox/rc.xml 
sudo pacman -Rns xfwm4 xfce4-session xfce4-settings xfconf
sudo pacman -Rns xfwm4 xfce4-session xfce4-settings xfconf libxfce4ui
sudo pacman -S pcmanfm-gtk3
sudo pacman -S pcmanfm-gtk3 gvfs gvfs-mtp
sudo pacman -Rns xfwm4 xfce4-session xfce4-settings xfconf libxfce4ui thunar
sudo pacman -Rns xfwm4 xfce4-session xfce4-settings xfconf libxfce4ui thunar exo garcon thunar-volman 
pacman -Qe
pkill sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &
ls
cd .config/
ls
vim sxhkd/
cd sxhkd/
ls
vim sxhkdrc 
pkill sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &
sudo reboot
startx
sudo pacman -S startx
hostnamectl
sudo vim /etc/hosts
hostnamectl
pacman -Q xorg-xinit
sudo pacman -S xorg-xinit
startx
grep -A5 "<names>" ~/.config/openbox/rc.xml
xprop -root _NET_DESKTOP_NAMES
vim .config/openbox/rc.xml 
openbox --reconfigure
xprop -root _NET_DESKTOP_NAMES
pacman -Qe
sudo pacman -Rns vi vifm
pacman -Qe
sudo pacman -Rns clight clightd-git clightd-git-debug 
sudo pacman -Rns clight-debug clightd-git clightd-git-debug 
pacman -Qe
sudo pacman -R xorg-xgamma xorg-xdpyinfo xorg-iceauth
sudo pacman -R xorg-xwayland
pacman -Qe
sudo reboot
redshift
firefox
startx
systemctl --user status redshift
cat .bashrc
cat .bash_profile 
cat .config/systemd/user/redshift.service 
systemctl --user status redshift
clear
systemctl --user status redshift
cat .config/systemd/user/redshift.service 
cat .xinitrc 
vim .xinitrc 
systemctl --user stop redshift.service 
systemctl --user status flameshot.service 
systemctl --user start flameshot.service 
pacman -Qe
cat .config/sxhkd/sxhkdrc 
echo "Xcursor.size: 48" | xrdb -merge
echo "Xcursor.size: 72" | xrdb -merge
vim .Xresources 
xrdb -merge ~/.Xresources
clear
cat .config/polybar/config.ini 
sudo pacman -R ttf-dejavu ttf-mac-fonts apple-fonts
sudo pacman -S inter-font ttf-jetbrains-mono ttf-liberation
sudo pacman -S ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono
mkdir -p .config/fontconfig
vim .config/fontconfig/fonts.conf
vim .config/kitty/kitty.conf 
source .config/kitty/kitty.conf 
cp .config/polybar/config.ini .config/polybar/config.ini.backup
rm .config/polybar/config.ini
vim .config/polybar/config.ini
sudo reboot
sudo pacman -S sudo pacman -S inter-font
vim .config/polybar/config.ini
pkill polybar
polybar &
startx
ls /usr/share/themes/*/openbox-3/
ls ~/.local/share/themes/*/openbox-3/ 2>/dev/null
sudo pacman -S arc-gtk-theme
vim .xinitrc 
vim .config/gtk-3.0/settings.ini
mkdir -p ~/.themes
vim .config/gtk-3.0/settings.ini 
vim .xinitrc 
vim .config/openbox/rc.xml 
openbox --reconfigure
sudo reboot
vim .config/polybar/config.ini 
pkill polybar && sleep 2 && ~/.config/polybar/launch.sh 
flameshot gui
clear
# See how Qt interprets your screens
QT_LOGGING_RULES="qt.qpa.*=true" flameshot gui 2>&1 | grep -i screen
vim .config/polybar/config.ini 
sudo pavucontrol 
ps aux | grep -i pulse
pulseaudio --check
echo $?  # If this returns 0, PulseAudio is running
# Try to get PulseAudio's status using pactl
pactl info
# Check if there's a system-wide PulseAudio (usually not what we want)
systemctl status pulseaudio.service
# Check if there's a user PulseAudio service
systemctl --user status pulseaudio.service
systemctl --user status pulseaudio.socket
clear
echo "DISPLAY=$DISPLAY"
echo "DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS"
echo "PULSE_RUNTIME_PATH=$PULSE_RUNTIME_PATH"
export PULSE_RUNTIME_PATH=/run/user/1000/pulse
pavucontrol
# Check if the font is installed at all
fc-list | grep -i jetbrain
# More specifically, look for the Nerd Font variant
fc-list : family | grep -i "jetbrain.*nerd"
clear
fc-match -v "JetBrainsMono Nerd Font" | grep "family:"
cd .config/polybar/
ls
rm config.ini
ls
mv config.ini.backup config.ini
pkill polybar 
./launch.sh 
startx
sudo systemctl suspend
sudo dmesg
xrandr
xrandr --output DP-0 --mode 3840x2160 --pos 3840x0 --primary
sudo vim nano /usr/local/bin/fix-displays.sh
sudo chmod +x /usr/local/bin/fix-displays.sh
sudo nano /etc/systemd/system/display-resume.service
sudo systemctl enable display-resume.service
reboot
startx
# Check what fonts are actually installed
fc-list | sort
# See what font Firefox would use for sans-serif
fc-match sans-serif
# Check font substitution for a specific font
fc-match -v "Inter"
# See the complete matching process
FC_DEBUG=1 fc-match "Inter"
# List all font configuration files being loaded
fc-conflist
# Verify your fontconfig cache
fc-cache -fv
find / -iname "fonts"
sudo find / -iname "fonts"
fc-cache -fv
vim .config/polybar/config.ini 
.config/polybar/launch.sh 
pacman -Qe
sudo pacman -Rns zoom 
pacman -Qe
cat .config/fontconfig/fonts.conf 
vim .config/fontconfig/fonts.conf 
fc-cache -fv
# Check what fonts are actually installed
fc-list | sort
# See what font Firefox would use for sans-serif
fc-match sans-serif
# Check font substitution for a specific font
fc-match -v "Inter"
# See the complete matching process
FC_DEBUG=1 fc-match "Inter"
# List all font configuration files being loaded
fc-conflist
# Verify your fontconfig cache
fc-cache -fv
rm .config/fontconfig/fonts.conf 
vim .config/fontconfig/fonts.conf 
fc-cache --help
fc-cache -v
fc-cache -fv
sudo fc-cache -fv
fc-match -v sans-serif | grep family
clear
ls -la /usr/share/fonts/TTF/JetBrains*
mkdir -p ~/.local/share/fonts
cd Downloads/
ls
unzip JetBrains_Mono.zip 
ls
ls -a
unzip --help
mkdir jetbrains
unzip -v JetBrains_Mono.zip  -d /home/ben/Downloads/jetbrains/
cd jetbrains/
ls
cd ..
ls
sudo reboot
startx
hostnamectl status
hostnamectl 
hostnamectl --help
hostnamectl hostname --help
hostnamectl hostname h370n
hostnamectl status
sxhkd 
sxhkd --help
sxhkd -s 
sxhkd status
cat .config/sxhkd/sxhkdrc 
# Check if sxhkd is running
pgrep -x sxhkd
# Check your DISPLAY variable
echo $DISPLAY
# Check if you're in an X session
echo $XDG_SESSION_TYPE
# See all sxhkd processes with details
ps aux | grep sxhkd
# Check X authentication
xauth list
clear
# Check for any XFCE processes still running
ps aux | grep -i xfce
ps aux | grep -i xfconf
ps aux | grep -i xfsettingsd
# Check for XFCE settings daemon specifically (this one grabs keys)
pgrep -fl xfce4-settings
pgrep -fl xfsettingsd
# See ALL running processes that might grab keys
ps aux | grep -E "(xfce|xfwm|xfdesktop|xfconf|thunar|panel)"
# Check if XFCE configs are still being loaded
ls -la ~/.config/xfce4/
ls -la /etc/xdg/xfce4/
# Check dbus for XFCE services
dbus-send --print-reply --dest=org.freedesktop.DBus /org/freedesktop/DBus org.freedesktop.DBus.ListNames | grep -i xfce
# See what's actually grabbing your keys
xdotool keydown super key Return keyup super
# If nothing happens,
clear
# First, check your XAUTHORITY variable
echo $XAUTHORITY
# If it's empty or wrong, set it correctly
export XAUTHORITY=~/.Xauthority
# Verify the .Xauthority file exists and has the right permissions
ls -la ~/.Xauthority
# If it doesn't exist or has issues, regenerate it
xauth generate :0 . trusted
xauth add ${HOST}:0 . $(xxd -l 16 -p /dev/urandom)
# Or more simply, merge the current auth
xauth merge ~/.Xauthority
# Test xdotool again
xdotool getactivewindow
sudo systemctl suspend
sudo reboot
startx
vim test.html
firefox test.html 
# Test what Firefox would get when requesting different families
FC_DEBUG=1 fc-match -s "sans-serif" | head -20
# Check if any application-specific rules are affecting Firefox
FC_DEBUG=4 firefox 2>&1 | grep -i font
clear
# Check what fontconfig is actually returning for each family
fc-match sans-serif
fc-match serif  
fc-match monospace
# See the full matching details
fc-match -v sans-serif | grep "family\|file"
fc-match -v serif | grep "family\|file"
firefox test.html 
cat .config/gtk-3.0/settings.ini 
vim .config/gtk-3.0/settings.ini 
vim .config/polybar/config.ini 
chromium
flameshot gui
clear
# Check current DPI settings
xrdb -query | grep dpi
xdpyinfo | grep -B2 resolution
# Check Qt scaling variables
echo $QT_SCALE_FACTOR
echo $QT_AUTO_SCREEN_SCALE_FACTOR
echo $GDK_SCALE
pacman -Qe
xrandr | grep '*'
vim .config/sxhkd/sxhkdrc 
sudo reboot
cd Downloads/
ls
7z x SF-Mono.dmg 
ls
7z x SF-Pro.dmg 
ls
rm SF-*.dmg
ls
7z x JetBrains_Mono.zip 
ls
cd SFMonoFonts/
ls
cd \[HFS+\ Private\ Data\]/
ls
ls -a
cd ..
ls
ls -alh
7z x 'SF\ Mono\ Fonts.pkg'
7z x 'SF Mono Fonts.pkg'
ls
file 'SF Mono Fonts.pkg'
ls
cd SFMonoFonts.pkg/
ls
ls -alh
sudo pacman -S gzip 
gunzip -c Payload | cpio -idm
ls
cd Library/
ls
cd Fonts/
ls
cd ..
ls
cd ..
ls
file Payload 
file PackageInfo 
ls
cd Library/
ls
cd Fonts/
ls
cp * ~/.local/share/fonts/sf-pro/
cd ~/.local/share/fonts/sf-pro/
ls
cd ~/Downloads/
ls
rm -r SFMonoFonts/
ls
7z x SFProFonts/
ls
file SFProFonts
file SFProFonts.pkg
rm -r SFProFonts*
ls
7z x SF-Pro.dmg 
ls
rm SF-Pro.dmg 
ls
cd SFProFonts/
ls
7z x 'SF Pro Fonts.pkg'
ls
file SFProFonts.pkg/
cd SFProFonts.pkg/
ls
file Payload 
gunzip --help
gunzip -c Payload | cpio -idm
ls
cd Library/
ls
cd Fonts/
ls
cp * ~/.local/share/fonts/sf-pro/
cd ~/.local/share/fonts/sf-pro/
ls
fc-cache -fv ~/.local/share/fonts
cd ~/Downloads/
ls
rm -r SFProFonts/
ls
7z x NY.dmg 
ls
cd NYFonts/
ls
7z x 'NY Fonts.pkg'
ls
cd NYFonts.pkg/
ls
gunzip -c Payload | cpio -idm
ls
cd Library/
ls
cd Fonts/
ls
mkdir ~/.local/share/fonts/ny
cp * ~/.local/share/fonts/ny
cd ~/.local/share/fonts/ny
ls
fc-cache -fv ~/.local/share/fonts
clear
cat ~/.config/fontconfig/fonts.conf 
vim ~/.config/fontconfig/fonts.conf 
fc-cache -fv ~/.local/share/fonts
clear
# Verify your fonts are registered correctly
fc-match sans-serif  # Should show SF Pro Text
fc-match serif       # Should show New York
fc-match monospace   # Should show SF Mono
# See all variants of each family
fc-list | grep "SF Pro Text"
fc-list | grep "New York"
fc-list | grep "SF Mono"
pcmanfm 
clear
cd ..
ls
ls -l
cp -r jetbrains-mono/ ~/dotfiles/.local/share/fonts/
cp -r cjk/ sf-pro/ symbols/ ~/dotfiles/.local/share/fonts/
cd ~/.config/
ls
rm -r clight-gui/
cd pcmanfm/
ls
cd default/
ls
vim pcmanfm.conf 
pcmanfm &
