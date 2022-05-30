#!/bin/bash

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
wget https://raw.githubusercontent.com/grayplex/scripts/main/if_tea.omp.json -O ~/.poshthemes/if_tea.omp.json

# Uncomment this to download all the themes
#wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
#unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
#chmod u+rw ~/.poshthemes/*.json
#rm ~/.poshthemes/themes.zip


echo 'eval "$(oh-my-posh init bash --config ~/.poshthemes/if_tea.omp.json)"' >> ~/.bashrc

exec bash
