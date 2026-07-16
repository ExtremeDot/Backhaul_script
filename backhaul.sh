#!/bin/bash
apt update -y
apt install wget -y
wget -O /etc/logo2.sh https://raw.githubusercontent.com/ExtremeDot/Backhaul_script/refs/heads/main/logo.sh
chmod +x /etc/logo2.sh
if [ -f "backhaul.py" ]; then
    rm backhaul.py
fi

wget https://raw.githubusercontent.com/ExtremeDot/Backhaul_script/main/backhaul.py
python3 backhaul.py
