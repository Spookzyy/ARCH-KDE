## Check if running as root. If root, script will exit
if [[ $EUID -eq 0 ]]; then
    echo "${ERROR}  This script should ${WARNING}NOT${RESET} be executed as root!! Exiting......." |
    printf "\n%.0s" {1..2} 
    exit 1
fi

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
