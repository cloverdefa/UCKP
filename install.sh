#!/bin/bash
sudo apt update && sudo apt full-upgrade -y #更新APT庫&更新內容
sudo apt install curl snmpd gcp nano bash-completion wakeonlan -y  #下載安裝 curl&snmpd&bash-completion&wakeonlan 四項
sudo mv /etc/snmp/snmpd.conf /etc/snmp/snmpd.conf.bak  #備份預設snmpd.conf
sudo cp /home/$(whoami)/uckh/snmpd.conf /etc/snmp/  #複製下載編輯完成的snmpd.conf至/etc/snmp/
sudo curl -o /usr/bin/distro https://raw.githubusercontent.com/librenms/librenms-agent/master/snmp/distro  #下載distro
sudo chmod +x /usr/bin/distro  #賦予distro執行權限
sudo service snmpd restart  #重新啟動snmpd服務
sudo rm -r ~/uckh  #移除下載資料夾
sudo reboot  #重新啟動開機
