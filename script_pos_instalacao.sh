#!/bin/bash
#################################################################
#								#
#	Script de instalação de softwares			#
#	Autor: Ricardo Felipe L. de Andrade			#
#	Distribuição: Ubuntu 11.04				#
#	Versão: 1.0						#	
#	Licença: GPL						#
#								#
#	Breve: Regras de firewall				#
#								#
#################################################################


#################################################################
# 			Repositórios				#
#################################################################

echo "Adicionando os repositórios...."

cd 
sudo add-apt-repository ppa:am-monkeyd/nautilus-elementary-ppa
sudo add-apt-repository ppa:jd-team/jdownloader

echo "Atualizando o repositório geral..."

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring && sudo apt-get --quiet update

sudo apt-get install app-install-data-medibuntu apport-hooks-medibuntu


#################################################################
# 			Tema					#
#################################################################

# Macbuntu //TODO
# Globus //TODO
# Nautilus elementary

echo "Instalando o tema do macbuntu..."
wget http://gnaag.k2city.eu/nautilus-breadcrumbs-hack.tar.gz
tar -xvf nautilus-breadcrumbs-hack.tar.gz

#################################################################
# 			Vídeo					#
#################################################################

# Vlc player
# Codecs
echo "Instalando os players e codecs de video..."
sudo aptitude install vlc non-free-codecs libdvdcss2 faac faad ffmpeg ffmpeg2theora flac icedax id3v2 lame libflac++6 libjpeg-progs libmpeg3-1 mencoder mjpegtools mp3gain mpeg2dec mpeg3-utils mpegdemux mpg123 mpg321 regionset sox uudeview vorbis-tools x264

#################################################################
# 			Áudio					#
#################################################################

#################################################################
# 			Internet				#
#################################################################

# Google Chrome
# Skype
# JDownloader

echo "Instalando os aplicativos de internet...."
sudo apt-get install skype chromium-browser jdownloader

#################################################################
# 			Programação				#
#################################################################

# Eclipse //TODO
# Java 6
# Github //TODO
# Ruby

echo "Instalando aplicativos para programacao..."
sudo apt-get install eclipse sun-java6-plugin sun-java6-jdk sun-java6-fonts sun-java6-bin

#################################################################
# 			Texto					#
#################################################################

# Latex
# Kile
# Texmaker
# Kbibtex

echo "Instalando programas para texto..."
sudo apt-get install kile-i18n-ptbr texmaker pdflatex bibtex kbibtex

#################################################################
# 			Utilitários				#
#################################################################

# Guake
# Gnome Do
# Unrar
# Redimensionar imagens (Nautilus)
# Alteração automática do papel de parede por tempo
# Sticky notes e Xpad //TODO
# Cover Gloobus //TODO
# Nevernote //TODO

echo "Instalando os utilitários do sistema...."
sudo apt-get install guake gnome-do unrar nautilus-image-converter desktopnova desktopnova-module-gnome desktopnova-tray xpad

echo "Fechando os aplicativos..."

nautilus -q

echo "Fim da instalação."
