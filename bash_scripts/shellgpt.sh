#!/bin/bash

sudo apt-get update && sudo apt upgrade -y
sudo apt install python3 -y
sudo apt install python3-pip -y
echo "Zaktualizowano system. Instalacja python3 i python3-pip zakończona powodzeniem"
echo "Rozpoczynam instalację SHELL GPT"
pip install shell-gpt --user
echo "Przygotuj klucz API od OpenAI"
cd .local/bin && python3 sgpt

echo "export PATH=$PATH:~/.local/bin:/usr/bin/python3" >> .bashrc
source .bashrc

