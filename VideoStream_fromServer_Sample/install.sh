#!/bin/sh

echo "==========================================="
echo "\t EYETECH INSTALLER STREAMING SERVICE"
echo "#==========================================="

echo "Atualizando Repositórios..."
sudo apt update
echo "Instalando Libraries..."
sudo apt install libopencv-dev
sudo apt install python-opencv
echo "Instalando libs Python3"
sudo python3 -m pip install grpcio grpcio-tools scikit-video
sudo python3 -m pip install requeriments.txt