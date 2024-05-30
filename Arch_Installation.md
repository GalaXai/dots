This was my process of getting arch setup done.

The installation process will be done with `archinstall`
#### Settings
Archinstall language -> English
KeyBoard layout -> pl
BootLoader -> grub
Swap -> True
Profile
	- Desktop
	- Wayland
	- OS Drivers (AMD)
Audio -> pulseaudio
Network -> Network Manager
Additonal Packages -> git curl firefox tree code stow fastfetch waybar discord hyprpaper
Optional Repo -> multi lib

## Removing wofi
swap wofi to rofi since cattppucin has theme for it

# update pacman
```bash
sudo pacman -Syu
```
## waybar
pacman -S ttf-font-awesome <- missing icons

## visudo
sudo EDITOR=vim visudo
root ALL=(ALL) NOPASSWD: ALL
### vencord
we have discord installed already
``` bash
https://vencord.dev/download/
```
## Paru
```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
## Screenshots
paru -S hyprshot
> I bind it to: mod + shift + S
```
bind = $shiftMod S, exec hyprshot -m region --clipboard--only
```

## Wallpaper

will be using hyprpaper

```
# Working file /hypr/hyprpaper.conf

preload = <path_to_image>
# if monitor left empty apply to all
wallpaper = monitor, <path_to_image>
```
```
# Working file /hypr/hyprland.conf
exec-once = hyprpaper -c <path to hyprpaper.conf>
```


## Themes & Fonts $ Icons
Kitty theme is catppuccin -> get it from github and copy

Icons -> sudo pacman -S papirus-icon-theme
Fonts -> sudp pacman -S ttf-0xproto-nerd
also change the font in vscode to see icons


lxappearance not sure if it changes something?

sudo pacman -S qt6ct < to fix doplhin
<!-- sudo pacman -S kservice5 < fix more doplhin // this didn't help -->
sudo pacman -S archlinux-xdg-menu < more fixes & run XDG_MENU_PREFIX=arch- kbuildsycoca6 
env =  QT_QPA_PLATFORMTHEME,qt6ct

## Audio
We are using pulseaudio
i saw `pavucontrol` in waybar config may use it as well.
pacman -S pavucontrol


## Image viewer

sudo pacman -S gwenview


## lock screen
sudo pacman -S hyprlock