#!/bin/bash
echo "Ten skrypt instaluje i synchronizuje CHAT_GPT z terminalem"
sleep 2
DEBIAN_FRONTEND=noninteractive
apt-get update && sudo apt upgrade -y
apt install python3 -y
apt install python3-pip -y
echo "Zaktualizowano system. Instalacja python3 i python3-pip zakończona powodzeniem"
sleep 2
echo "Rozpoczynam instalację SHELL GPT"
sleep 2
cp ~/.bashrc /home/$USER/bashrc_old
echo "Skopiowano plik .bashrc do lokalizacji /home/$USER/bashrc_old"
sleep 2
pip install shell-gpt --user
echo "Przygotuj klucz API od OpenAI"
sleep 2
cd ~/.local/bin && python3 sgpt
cd
echo "export PATH=$"PATH":~/.local/bin:/usr/bin/python3" >> .bashrc
source ~/.bashrc
echo "Instalacja CHATU GPT zakończona. Możesz zadać mu pytanie komendą sgpt "

