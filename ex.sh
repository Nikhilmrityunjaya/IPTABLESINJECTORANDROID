port_block() {
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
 printf "            ${GREEN}PORTBLOCK_INJECTOR${NC} \n"
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

touch /storage/emulated/0/ipports.sh
echo "🔐Enter the port You want to block : "
read IP
echo "iptables -I INPUT -p tcp  --dport $IP -j REJECT" >> /storage/emulated/0/ipports.sh
printf "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
printf "         ${GREEN}SUCCESSFULLY ADDED TO BLACKLIST\n"
printf "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
echo "1:Add more ports"
echo "2:Block Entered ports"
read option
if [ $option == "1" ]
then
get_name
elif [ $option == "2" ]
then
bash /storage/emulated/0/ipports.sh
fi
}
get_name() {
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
 printf "            ${GREEN}IP/hostsBLOCK_INJECTOR${NC} \n"
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

echo "🔐Enter the ip address/host You want to block : "
read IP
echo "iptables -I INPUT -s $IP -j DROP &>/dev/null" >> /storage/emulated/0/iptables.sh
sleep 1
printf "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
printf "         ${GREEN}SUCCESSFULLY ADDED TO BLACKLIST\n"
printf "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
echo "1:Add more IPs"
echo "2:Block Entered IPs"
read option
if [ $option == "1" ]
then
get_name
elif [ $option == "2" ]
then
bash /storage/emulated/0/iptables.sh
fi
}
touch /storage/emulated/0/iptables.sh
#!/bin/bash
# Ask the user for their name
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
 printf "            ${GREEN}IPTABLES_INJECTOR${NC} \n"
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
sleep 0.5
echo "| ● Creator : NIKHIL MRITYUNJAY "
sleep 0.5
echo "| ● Support : VIJAY/GHOSTOWNER"
sleep 0.5
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
printf "          ${GREEN}@NIKHIL_MRITYUNJAY${NC} \n"
printf "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n\n"

echo "1: ⚠️ Block IPs/hosts ⚠️"
echo "2: ⚠️ Block Ports ⚠️"
read io
if [ $io == "1" ]
then
get_name
elif [ $io == "2" ]
then
port_block
fi
