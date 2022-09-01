sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee /etc/apt/sources.list.d/wine_chrome_os_made_simple.list
sudo apt update
sudo apt install --install-recommends winehq-stable winbind git python3-pip pkg-config libcairo2-dev libdbus-1-dev gtk-update-icon-cache desktop-file-utils xdg-utils libgirepository1.0-dev gir1.2-gtk-3.0
git clone https://gitlab.com/brinkervii/grapejuice.git
cd grapejuice
python3 ./install.py