read -p "this scipt only install things required for normal gaming/work uses!! Are you sure you want to continue? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

##clear
clear

##Enable Multib, got this part off the script from my uncle.

multilib() {
       which pacman >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        _has_multilib=$(grep -n "[multilib]" /etc/pacman.conf | cut -f1 -d:)
        if [[ -z $_has_multilib ]]; then
            echo -e "\n[lib32]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf
        else
            sudo sed -i -e "${_has_multilib}s/^#//" /etc/pacman.conf
            _has_multilib=$((${_has_multilib} + 1))
            sudo sed -i -e "${_has_multilib}s/^#//" /etc/pacman.conf
        fi
        sudo pacman -Syy
    fi
}
multilib


read -p "this will install YAY Package installer Are you sure you want to continue? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

##clear 
clear 

sudo pacman -Syu
sudo pacman -S --needed base-devel git
sudo pacman -S git 
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

read -p "install grub-customizer? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

yay -S grub-customizer

read -p "would you like to install all fonts i prefer to use (some apps might not work if not added)? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

 yay -S ttf-material-design-icons terminus-font-ttf

## ask to install panel-customiser FOR KDE ONLY.
read -p "install panel-customizer (KDE ONLY? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

yay -S plasma6-applets-panel-colorizer

## ask to install rxfetch (WITH FONTS)
read -p "install rxfetch? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

yay -S rxfetch 
#ask to install timeshift

read -p "install timeshift? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

 sudo pacman -S timeshift

## ask to install discord
read -p "install discord? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu discord

##clear 
clear

## ask to install cartidges
read -p "install cartridges? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu cartridges

##clear
clear

## ask to install lutris
read -p "install lutris? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -Syu lutris

##clear 
clear

read -p "install goverlay dxvk and steam? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi
 
sudo pacman -Syu goverlay steam
yay -Syu dxvk

#clear
clear

