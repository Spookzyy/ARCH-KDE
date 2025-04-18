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

## delete
