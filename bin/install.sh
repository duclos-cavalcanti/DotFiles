#!/bin/bash
#
# Script to automate the most of my/a arch linux install.

# -- On Thinkpad --
# Shift goes to Grub
# F2 goes to BIOS
# F12 goes to Boot menu

usr=duclos
dotfiles=~/Documents/dotfiles

function install::log() {
  text=$1
  echo "LOG: ${text}..."
}

function install::preparation() {
  install::log "Loading Keys"
  loadkeys us

  install::log "Enabling Systemd"
  systemctl enable --now systemd timesyncd

  install::log "Setting timedatectl"
  timedatectl set-ntp true
}

function install::update_packages() {
  install::log "Updating Pacman"
  pacman -Syy archlinux-keyring
}

function install::partitioning() {
  install::log "Partitioning drives"
  declare -a drives
  while read -r name _ _ _ _ _ _ var; do
    echo "$name"
  done < <(lsblk -l | tail -4)

  # cfdisk --zero /dev/sda (or sbd)
  # EFI   300MB /dev/sda1
  # Swap  8GB   /dev/sda2
  # root  32GB  /dev/sda3
  # home  --GB  /dev/sda4
  #
  # mount /dev/sda3 /mnt
  # mkdir -p /mnt/boot/efi
  # mkdir -p /mnt/home
  # mount /dev/sda1 /mnt/boot/efi
  # mount /dev/sda4 /mnt/home
}

function install::pacstrap() {
  install::log "Pacstrapping base installation"
  pacstrap /mnt \
    base base-devel linux linux-headers linux-lts linux-lts-headers \
    linux-firmware networkmanager grub mkinitcpio efibootmgr dosfstools \
    os-prober mtools sudo vim git
}

function install::genfstab() {
  install::log "Pacstrapping base installation"
  genfstab -U /mnt >> /mnt/etc/fstab
}

function install::genfstab() {
  install::log "Chrooting"
  arch-chroot /mnt
}

function install::vconsole() {
  install::log "Vconsole"
  echo "KEYMAP=us\nFONT=\nFONT_MAP=" >> /etc/vconsole.conf
  # KEYMAP=us
  # FONT=
  # FONT_MAP=
}

function install::locale_gen() {
  install::log "Locale-gen"
  echo "Go to /etc/locale.gen and uncomment en_US.UTF-8 UTF-8."
  echo "Then run locale-gen."
  echo "Finally go to /etc/locale.conf and check if LANG=en_US.UTF-8 option."
  # en_US.UTF-8 UTF-8  
  # locale-gen
}

function install::localtime() {
  install::log "Localtime"
  ln -sf /usr/share/zoneinfo/Europe/Berlin/etc/localtime
  # en_US.UTF-8 UTF-8  
  # locale-gen
}

function install::hwclock() {
  install::log "Hwclock"
  hwclock --systohc --utc
}

function install::machine_name() {
  install::log "Machine Name"
  select name in "archthink" "thinkpad" "archdesktop"; do
    echo "$name" >> /etc/hostname
    echo -e \
      "127.0.0.1\t\tlocalhost\n::1\t\tlocalhost\n127.0.1.1\t\t${name}.localdomain ${name}" \
      > /etc/hosts
  done
}

function install::host_name() {
  install::log "Creating Password"
  passwd

  install::log "Host Name"
  useradd -m duclos
  passwd duclos
}

function install::groups() {
  install::log "Addings Host to groups"
  usermod -aG wheel,audio,video,optical,storage duclos

  install::log "Wheel group"
  echo "Uncomment %wheel ALL=(ALL)ALL"
  EDITOR=vim visudo
}

function install::systemctl() {
  install::log "Systemctl units"
  systemctl enable NetworkManager
  systemctl enable systemd-timesyncd
}

function install::mkinitcpio() {
  install::log "Mkinitcpio"
  mkinitcpio -p linux
}

function install::grub() {
  install::log "Grub"
  grub-install \
    --target=x86_64-efi \
    --efi-directory=/boot/efi
  grub-mkconfig -o /boot/grub/grub.cfg
}

function install::system_packages() {
  install::log "Installing main packages"
  sudo pacman -S \
    mesa intel-media-driver intel-ucode xf86-video-intel xorg xorg-xinit \
    nitrogen picom firefox bspwm sxhkd fish pcmanfm fzf tree scrot sxiv \
    zathura zathura-pdf-poppler xclip gimp libre-office docker dunst tmux \
    xdotool xdo jq htop usbutils net-tools wireless_tools lxappearance \
    breeze-icons adapta-gtk-theme kvantum-manager qt5ct bluez bluez-utils \
    pulseaudio pulseaudio-bluetooth openssh pavucontrol tlp lightdm \
    lightdm-gtk-greeter lightdm-gtk-greeter-settings clang

  sudo systemctl enable lightdm
  sudo systemctl enable tlp
}

function install::aur_packages() {
  install::log "Installing yay"
  cwd=$(pwd)
  cd /opt
  sudo git clone https://aur.archlinux.org/yay.git
  sudo chown -R duclos:duclos ./yay
  cd yay
  makepkg -si

  install::log "Installing aur packages"
  yay -S polybar lemonbar zoom

  cd $cwd
}

function install::filestructure() {
  install::log "Creating base-filestructure"
  cwd=$(pwd)
  mkdir /home/duclos/Desktop
  mkdir /home/duclos/Documents
  mkdir /home/duclos/Downloads
  mkdir /home/duclos/Pictures
  mkdir /home/duclos/Videos

  mkdir /home/duclos/.config
  mkdir /home/duclos/.bin

  cd /home/duclos/Documents
  mkdir aur
  git clone https://github.com/duclos-cavalcanti/dotfiles.git

  mkdir learn
  cd learn
  git clone https://github.com/duclos-cavalcanti/C-code-snippets.git
  git clone https://github.com/duclos-cavalcanti/data-structures.git
  git clone https://github.com/duclos-cavalcanti/intro-ai.git
  cd ..

  mkdir sckless
  cd sckless
  git clone https://github.com/duclos-cavalcanti/st.git
  git clone https://github.com/duclos-cavalcanti/dmenu.git
  git clone https://github.com/duclos-cavalcanti/tabbed.git

  cd st
  git checkout release
  sudo make clean install

  cd ../dmenu
  git checkout release
  sudo make clean install

  cd ../tabbed
  git checkout release
  sudo make clean install

  cd /home/duclos/Documents

  mkdir -p university/docs
  mkdir -p work/espl

  cd $cwd
}

function main() {
  set -x

  install::preparation
  install::update_packages
  install::partitioning
  install::pacstrap
  install::genfstab
  install::archchroot

  install::vconsole
  install::locale_gen
  install::localtime
  install::hwlclock
  install::machine_name
  install::host_name
  install::groups
  install::systemctl
  install::mkinitcpio
  install::grub
  
  install::log "Exit now with 'exit' and unmount with umount -R /mnt"

  install::system_packages
  install::aur_packages
  install::filestructure
}

main "$@"

