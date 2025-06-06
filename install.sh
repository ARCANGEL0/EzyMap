#!/bin/bash

echo "Installing..."
echo "Updating package lists..."
sudo apt-get update -qq > /dev/null 2>&1

echo "Installing curl..."
sudo apt-get install -y curl > /dev/null 2>&1

echo "Installing nmap..."
sudo apt-get install -y nmap > /dev/null 2>&1

mkdir -p ~/.local/share/fonts
[ ! -f ~/.local/share/fonts/starwars.flf ] && curl -o ~/.local/share/fonts/starwars.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/starwars.flf
[ ! -f ~/.local/share/fonts/Doom.flf ] && curl -o ~/.local/share/fonts/Doom.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/Doom.flf

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

