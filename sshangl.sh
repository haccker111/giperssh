clear
echo "                     GIPER SSH "
echo "Change password (1), Start ssh server on port 8022 (2) , Find out login to connect (3)"
read numb
if [ $numb = "1" ]
then
passwd
else
if [ $numb = "2" ]
then
echo -e "\e[32mHello! Do you want to continue?\e[0m";
read -p 'y' userinput1;
#
sshd
echo -e "\e[33mIf you want to stop the ssh tunnel then press enter"
read -p 'stop' userinput3;
#
pkill  sshd
else
if [ $numb = "3" ]
then
echo "Here is your login:"
whoami
else
echo "Error"
fi
fi
fi
