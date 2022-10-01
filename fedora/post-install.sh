#/bin/sh

# Fedora post-intallation providing some software and confings that I am usually setting by myself.
#This installation is based on Fedora Spanish set up, please change "Descargas" folder by "Downloads" if you are using an English version.
 
#Telegram installation 
cd $HOME
cd Descargas/
wget https://updates.tdesktop.com/tlinux/tsetup.4.2.4.tar.xz
tar -xf tsetup.4.2.4.tar.xz
rm tsetup.4.2.4.tar.xz 
cd Telegram/
./Telegram 
./Updater

# snapshot tools on Fedora (GNOME)
sudo dnf install gnome-screenshot -y

# Visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

#vim installation
sudo dnf install vim -y
