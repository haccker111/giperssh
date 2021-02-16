clear 
echo "                     GIPER SSH "
echo "Change password (1), Start ssh server on port 8022 (2)"
read numb
if [ $numb = "1" ]
then
passwd 
else
echo -e "\e[32mHello! Do you want to continue?\e[0m";
read -p 'y' userinput1;
#
sshd
echo -e "\e[33mIf you want to stop ssh tunnel then press enter\e[0m";
read -p 'stop' userinput3;
#
pkill  sshd
fi
