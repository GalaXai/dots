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
Additonal Packages -> git curl firefox tree code stow fastfetch waybar discord
Optional Repo -> multi lib


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
> + had to bind
```
bind = $mainMod S, exec hyprshot -m region --clipboard--only
```

## Wallpaper

paru -S hyprpaper

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


lxappearance

sudo pacman -S qt6ct < to fix doplhin
env =  QT_QPA_PLATFORMTHEME,qt6ct
