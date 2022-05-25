#!/bin/bash
sudo apt update && sudo apt full-upgrade -y #更新APT庫&更新內容
sudo apt install curl nano bash-completion wakeonlan -y  #下載安裝 curl&bash-completion&wakeonlan
sudo rm -r ~/UCKP  #移除下載資料夾
sudo reboot  #重新啟動開機
