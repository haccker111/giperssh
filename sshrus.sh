clear 
echo "                     GIPER SSH "
echo "Поменять пароль (1), Запустить сервер ssh на порту 8022 (2), Узнать логин для подключения (3)"
read numb
if [ $numb = "1" ]
then
passwd 
else
if [ $numb = "2" ]
then
echo -e "\e[32mПривет! Хочешь продолжить?\e[0m";
read -p 'y' userinput1;
#
sshd
echo -e "\e[33mЕсли, хочешь, остановить ssh тонель то тогда нажми enter\e[0m";
read -p 'stop' userinput3;
#
pkill  sshd
else
if [ $numb = "3" ]
then
echo "Вот ваш логин:"
whoami
else
echo "Error"
fi
fi
fi
