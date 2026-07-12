# Hyprland Dotfiles
 
[OS: Arch/CachyOS]
[WM: Hyprland]
[Theme: Gruvbox-Dark]

Just my personal Hyprland configurations. Built around a cozy, keyboard-driven Gruvbox aesthetic. It is mostly a combination of community scripts patched together, customized color schemes, and workflow adjustments.

OBSERVE!

If you plan to just rawly copy this, go through each config file, because I'm pretty sure there might be quite a few hardcoded paths in there. Just a heads up. 

------------------------------------------------------------

*Kitty
*Zsh
*p10k.zsh ^^
*gslapper (for animated background)
*waybar
*rofi
*gsimplecal (calendar)
*wlogout
*swaync
*btop
*lazyvim
*fastfetch
*mpv

*Zen browser
*gamemode
*gamescope
*stow
*bitwarden (will turn into vaultwarden when I self host)
*obsidian
*darktable
*krita
*davinci resolve
*satty
*thunar
*gparted
*prism launcher
*OBS-Studio
*steam
*Heroic-Launcher
*Balena Etcher
*ffmpeg
*vesktop
*vlc
*github desktop

*yay
*paru
*swww
*flatpak



might have missed some stuff, so I will just put EVERYTHING, in case I need it in the future lol.


FROM PACMAN:


7zip
accountsservice
adw-gtk-theme
alacritty
alsa-firmware
alsa-plugins
alsa-utils
apple_cursor
ark
audacity
auto-cpufreq
awesome-terminal-fonts
awww
balena-etcher
base
base-devel
bash-completion
bind
bitwarden
bluez
bluez-hid2hci
bluez-libs
bluez-obex
bluez-utils
brightnessctl
btop
btrfs-assistant
btrfs-progs
cachyos-fish-config
cachyos-grub-theme
cachyos-hello
cachyos-hooks
cachyos-kernel-manager
cachyos-keyring
cachyos-micro-settings
cachyos-mirrorlist
cachyos-packageinstaller
cachyos-plymouth-bootanimation
cachyos-rate-mirrors
cachyos-settings
cachyos-v3-mirrorlist
cachyos-v4-mirrorlist
cachyos-wallpapers
cachyos-zsh-config
cantarell-fonts
chafa
chwd
cmake
cpupower
cryptsetup
cuda
darktable
davinci-resolve
decent-sampler-bin
device-mapper
diffutils
dmidecode
dmraid
dnsmasq
dolphin
dosfstools
duf
e2fsprogs
efibootmgr
efitools
egl-wayland
ethtool
exfatprogs
f2fs-tools
fastfetch
ffmpegthumbnailer
filelight
firefox
flatpak
fsarchiver
gamemode
gamescope
git
github-desktop-bin
glances
gnome-keyring
godot
gparted
gpu-screen-recorder-ui
grub
grub-btrfs-support
grub-hook
gruvbox-dark-gtk
gsimplecal
gslapper
gst-libav
gst-plugin-pipewire
gst-plugins-bad
gst-plugins-ugly
gvfs-mtp
hdparm
heroic-games-launcher-bin
hwdetect
hwinfo
hyprland
hyprpolkitagent
hyprshot
inetutils
inkscape
intel-ucode
iptables
iwd
jfsutils
kitty
krita
less
lib32-gamemode
lib32-nvidia-utils
lib32-opencl-nvidia
lib32-pipewire-jack
lib32-vulkan-icd-loader
libdvdcss
libgsf
libopenraw
libva-nvidia-driver
linux-cachyos
linux-cachyos-headers
linux-cachyos-lts
linux-cachyos-lts-headers
linux-cachyos-lts-nvidia-open
linux-cachyos-nvidia-open
linux-firmware
logrotate
lsb-release
lsp-plugins-vst3
lsscsi
lvm2
lxappearance
man-db
man-pages
mdadm
meld
mesa-utils
micro
mkinitcpio
modemmanager
mpv
mpvpaper
mtools
nano
nano-syntax-highlighting
neovim
netctl
networkmanager
networkmanager-openvpn
nfs-utils
nilfs-utils
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
nss-mdns
nvidia-settings
nvidia-utils
nvtop
nwg-look
obs-studio
obsidian
octopi
opencl-nvidia
openrgb
openssh
os-prober
otf-geist-mono-nerd
pacman-contrib
papirus-folders
papirus-icon-theme
paru
pavucontrol
perl
pipewire-alsa
pipewire-jack
pipewire-pulse
pkgfile
plasma-meta
playerctl
plocate
plymouth
polkit-kde-agent
poppler-glib
power-profiles-daemon
prismlauncher
proton-cachyos-slr
pv
python
python-defusedxml
python-packaging
python-pip
qpwgraph
reapack
reaper
rebuild-detector
reflector
ripgrep
rofi
rsync
ryujinx
s-nail
satty
sddm
sddm-kcm
sdl2_image
sdl2_mixer
sdl2_ttf
sfml
sg3_utils
smartmontools
snapper
sof-firmware
steam
stow
sudo
surge-xt-vst3
swaync
sws
sysfsutils
texinfo
thunar
thunar-archive-plugin
thunar-volman
tree
ttf-bitstream-vera
ttf-dejavu
ttf-jetbrains-mono-nerd
ttf-liberation
ttf-meslo-nerd
ttf-opensans
tumbler
ufw
unrar
unzip
upower
usb_modeswitch
usbutils
uwsm
vesktop-bin
vim
visual-studio-code-bin
vlc-plugins-all
vulkan-icd-loader
waybar
wayland-utils
waypaper
wget
which
wireless-regdb
wireplumber
wl-clipboard
wlogout
wofi
wpa_supplicant
xdg-desktop-portal-hyprland
xdg-desktop-portal-wlr
xdg-user-dirs
xfsprogs
xl2tpd
xorg-xwayland
yay
zen-browser-bin
zip



FROM PARU/YAY : 


apple_cursor 2.0.1-1
balena-etcher 2.1.4-1
decent-sampler-bin 1.15.2-1
github-desktop-bin 3.4.13_linux1-1
gruvbox-dark-gtk 1.0.2-1
gslapper 1.4.0-1
mpvpaper 1.8-1
papirus-folders 1.14.0-1
visual-studio-code-bin 1.109.5-1



FROM FLATPAK : 


Spotify