{
  config,
  pkgs,
  username,
  ...
}: {
  /*
  environment.etc."xdg/autostart/gnome-distrobox.desktop" =
  pkgs.runCommand "gnome-distrobox.desktop" {
    buildInputs = [pkgs.distrobox pkgs.gnome-session];
  } ''
    mkdir -p $out
    echo "[Desktop Entry]
    Name=GNOME (DistroBox)
    Exec=${pkgs.distrobox}/bin/distrobox enter -n kalignome -- /usr/bin/gnome-session
    Type=Application
    X-GNOME-Autostart-enabled=true
    NoDisplay=false" > $out/gnome-distrobox.desktop
  '';
  */

  services = {
    xserver = {
      enable = true;
      #videoDrivers = ["intel"];
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    displayManager = {
      sessionPackages = [
        pkgs.hyprland
        #pkgs.distrobox
        /*
        (pkgs.symlinkJoin
        {
          name = "gnome-distrobox-session";
          paths = [
            pkgs.distrobox
            pkgs.gnome-session
          ];
        })
        */
      ];
      sddm.enable = true;
      sddm.theme = "${import ../system/sddm.nix {inherit pkgs;}}";
    };

    /*
    greetd = {
      enable = true;
      vt = 3;
      settings = {
        default_session = {
          user = username;
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland"; # start Hyprland with a TUI login manager
        };
      };
    };
    */

    smartd = {
      enable = false;
      autodetect = true;
    };

    gvfs.enable = true;
    tumbler.enable = true;

    udev.enable = true;
    envfs.enable = true;
    dbus.enable = true;

    fstrim = {
      enable = true;
      interval = "weekly";
    };

    libinput.enable = true;

    rpcbind.enable = false;
    nfs.server.enable = false;

    openssh.enable = false;

    flatpak.enable = true;
    /*
      systemd.services.flatpak-repo = {
      path = [ pkgs.flatpak ];
      script = ''
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      '';
    };
    */

    fwupd.enable = true;

    upower.enable = true;

    gnome.gnome-keyring.enable = true;

    #printing = {
    #  enable = false;
    #  drivers = [
    # pkgs.hplipWithPlugin
    #  ];
    #};

    #avahi = {
    #  enable = true;
    #  nssmdns4 = true;
    #  openFirewall = true;
    #};

    #ipp-usb.enable = true;

    #syncthing = {
    #  enable = false;
    #  user = "${username}";
    #  dataDir = "/home/${username}";
    #  configDir = "/home/${username}/.config/syncthing";
    #};
  };

  xdg.portal.enable = true; #required for flatpak
}
