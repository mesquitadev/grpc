#!/bin/sh

echo "==========================================="
echo "\t EYETECH INSTALLER STREAMING SERVICE"
echo "#==========================================="

echo -n libopencv-dev python-opencv
echo ""
echo ""
pacote=$(dpkg --get-selections | grep "$nome" )
echo ""
echo -n "Verificando se o Pacote $nome esta instalado"
echo ""
echo ""
echo ""
sleep 2
if [ -n "$pacote" ] ;
then echo
     echo "Pacote $nome ja instalado"
else echo
     echo "Pacote $nome Necessario-> Nao instalado"
     echo "Instalando Automaticamente Pacote Dialog..."
     sudo apt update
     sudo apt install libopencv-dev
     sudo apt install python-opencv
     sudo python3 -m pip install grpcio grpcio-tools scikit-video
fi
