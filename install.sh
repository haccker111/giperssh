pkg install openssh
echo "Выберите язык приложения: 1 (English), 2 (Русский)"
read launch
if [ $launch = "1" ]
then
cp ~/giperssh/sshangl.sh $PREFIX/bin/giperssh
dos2unix $PREFIX/bin/giperssh
chmod 777 $PREFIX/bin/giperssh
giperssh
else
cp ~/giperssh/sshrus.sh $PREFIX/bin/giperssh
dos2unix $PREFIX/bin/giperssh
chmod 777 $PREFIX/bin/giperssh
giperssh
fi
