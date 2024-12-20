{...}: {
  imports = [
    ./ags.nix
    ./anyrun.nix
    ./hyprland.nix

    ./shell.nix
    ./tmux.nix
    ./wezterm.nix
    ./neovim.nix
    ./fzf.nix
    ./starship.nix

    ./default/obs-studio.nix
    ./virtualization/distrobox.nix

    #./stylix.nix
    ./xdg.nix
    ./theme.nix
    #./stylixnew.nix
    #./git.nix
    #./zoom.nix
    ./media.nix
    ./productivity.nix
    ./socials.nix
    #./nautilus.nix
    ./lazygit.nix
    #./browser.nix

    ./packages.nix
    #./insecure.nix
    ./developer/go.nix
  ];
}
