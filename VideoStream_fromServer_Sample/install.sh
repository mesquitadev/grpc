#!/bin/sh

echo "==========================================="
echo "\t EYETECH INSTALLER STREAMING SERVICE"
echo "#==========================================="

echo "Atualizando Repositórios..."
sudo apt update
echo "Instalando Libraries..."
sudo apt install libopencv-dev -y
sudo apt install python-opencv -y
echo "Criando venv"
virtualenv venv
echo "Ativando Venv..."
cd venv
bin/activate
echo "Instalando libs Python3"
sudo python3 -m pip install grpcio grpcio-tools scikit-video
sudo python3 -m pip install -r requeriments.txt