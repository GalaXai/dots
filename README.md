# Arch-kde dotfiles

> KISS 
# System installation
```bash
sudo pacman -S git kitty
archinstall 
# ... minimal + multilib | install
sudo pacman -Syu
sudo pacman -S plasma-desktop sddm-kcm dolphin-plugins
systemctl start sddm
systemctl reboot
```
Install yay or paru
### linutil for fast config of simple things ^^
```bash
yay -S linutil
```

### import keyboard shortcuts
>kde-shortcuts.kksrc


# Finish config
> This should be later moved to script since this will install a lot of packages
```bash
sudo pacman -S ttf-0xproto-nerd stow flameshot gwenview ark bash-completion
yay -S zen-browser-bin vesktop
```

## Optional
```
### STUDIO
sudo pacman -S obs-studio steam
### PROGRAMINNG
sudo pacman -S uv ruff go
yay -S cursor-bin
```

## Apply dotfiles
```bash
stow --adopt .
```
## TODO's
- [] try out tiling wm
- [] import more configs from kde
