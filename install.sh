#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "This command can only be run as root."
  exit 1
fi
echo "Installing..."
echo "Updating package lists..."
sudo apt-get update -qq > /dev/null 2>&1

echo "Installing curl..."
sudo apt-get install -y curl > /dev/null 2>&1

echo "Installing nmap..."
sudo apt-get install -y nmap > /dev/null 2>&1

echo "Installing proxychains..."
sudo apt-get install -y proxychains > /dev/null 2>&1

sudo mkdir -p /usr/share/fonts
[ ! -f /usr/share/fonts/starwars.flf ] && curl -o /tmp/starwars.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/starwars.flf && sudo mv /tmp/starwars.flf /usr/share/fonts/
[ ! -f /usr/share/fonts/Doom.flf ] && curl -o /tmp/Doom.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/Doom.flf && sudo mv /tmp/Doom.flf /usr/share/fonts/


for i in {1..5}; do
  echo -n "Loading"
  for j in {1..3}; do
    echo -n "."
    sleep 0.5
  done
  echo ""
done

echo ""

figlet -f ~/.local/share/fonts/starwars.flf "EzyMap"

sudo cp ezymap ~/.local/bin/
sudo cp ezymap /usr/bin/

SHELL_NAME=$(basename "$SHELL")
if [ "$SHELL_NAME" == "bash" ]; then
  echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
elif [ "$SHELL_NAME" == "zsh" ]; then
  echo "export PATH=\$PATH:$(pwd)" >> ~/.zshrc
else
  sudo cp ezymap /usr/bin/
fi

cd $HOME
read -n 1 -s -r -p "Press any key to restart your shell..."
echo ""

exec "$SHELL" -l

