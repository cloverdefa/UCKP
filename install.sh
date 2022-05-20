#!/bin/bash
sudo apt update && sudo apt full-upgrade -y #更新APT庫&更新內容
sudo apt install curl nano bash-completion wakeonlan unzip -y  #下載安裝 curl&bash-completion&wakeonlan
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v7.85.4/posh-linux-arm64 -O /usr/local/bin/oh-my-posh  #下載oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh #給予權限
mkdir ~/.poshthemes #安裝oh-my-posh佈景主題
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc
sudo rm -r ~/uckp  #移除下載資料夾
sudo reboot  #重新啟動開機
