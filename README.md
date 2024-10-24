# Arch-kde dotfiles

> KISS 
# System installation
```bash
sudo pacman -S git kitty
archinstall 
# ... minimal + multilib | install
sudo pacman -Syu
sudo pacman -S plasma-desktop sddm-kcm
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
sudo pacman -S ttf-0xproto-nerd stow flameshot 
yay -S 
```

## Optional
```
sudo pacman -S obs-studio
```

## Apply dotfiles
```bash
stow --adopt .
```
## TODO's
- [] try out tiling wm
- [] import more configs from kde
