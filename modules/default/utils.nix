{
  config,
  pkgs,
  inputs, 
  ...
}: {

  environment.systemPackages = with pkgs; [
    btrfs-progs
    curl
    wget
    btop
    htop
    git
    nix-prefetch-git
    cpufrequtils
    glib #for gsettings to work
    gsettings-qt
    killall
    libappindicator
    pciutils
    xdg-user-dirs
    xdg-utils
    networkmanagerapplet
    librsvg
    usbutils
    iw # networking
    inxi

  ];
}
