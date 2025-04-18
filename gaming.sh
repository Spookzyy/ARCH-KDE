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

sudo pacman -S discord

##clear 
clear

read -p "install cartridges? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -S cartridges

##clear
clear

read -p "install lutris? y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -S lutris
##clear 
clear

read -p "install goverlay dxvk and steam? MAKE SURE MULTIB IS ENABLED OR STEAM WONT DOWNLOAD. y/n : " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

sudo pacman -S goverlay steam
yay -S dxvk

#clear
clear

