#
# ~/.bashrc
#

# If not running interactively, don't do anything
# ==> Add this line at the top of your .bashrc:
[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach
# [[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Auto start Hyprland on tty1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  mkdir -p ~/.cache
  exec Hyprland > ~/.cache/hyprland.log 2>&1
fi


fastfetch --config ~/.config/fastfetch/compact.jsonc
source ~/main/bin/activate
# ==> Add this line at the bottom of your .bashrc:
[[ ${BLE_VERSION-} ]] && ble-attach
