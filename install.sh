## confirtmation prmpt to install
read -p "this scipt only installs yay and git only!! Are you sure you want to continue? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

## install base-devel and git 

sudo pacman -Syu
sudo pacman -S --needed base-devel git

## clear terminal
clear

## install yay VIA git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

## delete the yay folder
rm -rf yay 

## confirtmation prmpt to install
read -p "this scipt only install things for gaming only!! Are you sure you want to continue? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

##clear for questions 
clear

## ask to instll discord
read -p "install discord? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu discord

## ask to install cartidges
read -p "install cartridges? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu cartridges

## ask to install lutris
read -p "install lutris? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu lutris

read -p "install goverlay dxvk and steam? MAKE SURE MULTIB IS ENABLED OR STEAM WONT DOWNLOAD. y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu goverlay steam
yay -Syu dxvk

#clear
clear

