sudo apt update && sudo apt install -y git curl stow tree kitty fish


sudo update-alternatives --config x-terminal-emulator
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/kitty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

sudo chsh -s /usr/bin/fish billy # add here user name
export SHELL= /usr/bin/fish 

# fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --path=~/.local/share/omf --config=~/.config/omf
rm install

# icons
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt-get update
sudo apt-get install -y papirus-icon-theme

# Directory containing the zip files
directory=".themes"

# Loop through all .zip files in the directory
for zipfile in "$directory"/*.zip; do
    # Check if the file exists (in case there are no .zip files)
    if [ -f "$zipfile" ]; then
        # Unzip the file into the directory
        unzip -o "$zipfile" -d "$directory"
    else
        echo "No zip files found in $directory."
        break
    fi
done

# fonts
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip -O NewFont.zip
mkdir -p ~/.local/share/fonts
sudo mkdir -p /usr/local/share/fonts
sudo cp NewFont.zip ~/.local/share/fonts/
sudo cp NewFont.zip /usr/local/share/fonts/
sudo unzip ~/.local/share/fonts/NewFont.zip -d ~/.local/share/fonts/
fc-cache -fv ~/.local/share/fonts
sudo fc-cache -fv

#python
sudo apt install python3-pip python3.10-venv
python3 -m venv base


# firefox from deb
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt update && sudo apt install firefox # not sure if can add -y since need downgrade sometimes