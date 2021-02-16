clear 
echo "                     GIPER SSH "
echo "Поменять пароль (1), Запустить сервер ssh на порту 8022 (2)"
read numb
if [ $numb = "1" ]
then
passwd 
else
echo -e "\e[32mПривет! Хочешь продолжить?\e[0m";
read -p 'y' userinput1;
#
sshd
echo -e "\e[33mЕсли, хочешь, остановить ssh тонель то тогда нажми enter\e[0m";
read -p 'stop' userinput3;
#
pkill  sshd
fi
