#!/bin/sh

echo "==========================================="
echo "\t EYETECH INSTALLER STREAMING SERVICE"
echo "#==========================================="

echo "Atualizando Repositórios..."
sudo apt update
echo ""
echo ""
echo ""
echo ""
echo "Instalando Libraries..."
sudo apt install libopencv-dev -y
sudo apt install python-opencv -y
sudo apt install python-pip -y
echo ""
echo ""
echo ""
echo ""
echo "Criando venv"
virtualenv venv
echo "Ativando Venv..."
cd venv
bin/activate
echo ""
echo ""
echo ""
echo ""
echo "Instalando libs Python3"
sudo python3 -m pip install grpcio grpcio-tools scikit-video
sudo python3 -m pip install -r requeriments.txt