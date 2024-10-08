#!/bin/bash
# archlinux

clear

# yay также является обёрткой (wrapper) для pacman. 
# То есть через yay можно устанавливать пакеты из стандартных репозиториев Арча.
# Это может быть полезно, если нам нужно установить сразу несколько программ, 
# при этом некоторые из них находятся в стандартных репозиториях, а некоторые в AUR. 
# Нам не нужно отдельно вызывать pacman и yay. 
# Просто отдаём весь список в yay и он сам уже всё устанавливает.

# установим нужные для сборки инструменты
sudo pacman -S git base-devel --noconfirm

# устанавка уже скомпилированный пакет (yay-bin)
# чтобы yay собирался из исходников, вместо yay-bin.git впишите yay.git.
cd ~
git clone https://aur.archlinux.org/yay-bin.git

# переход в папку
cd yay-bin

# заходим в папку с исходниками и устанавливаем yay с помощью makepkg
# Флаг -s позволит удовлетворить зависимости, а флаг -i сразу установит программу после сборки.
makepkg -si

# Установка программ будет происходить без sudo
# пример для установки: yay -S google-chrome
# для поиска программ: yay google chrome, выведет список программ и этими словами