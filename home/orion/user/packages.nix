{pkgs, ...}: {
  home.packages = with pkgs; [
    ghostty
    git
    gh-dash
    jq

    nix-prefetch-git

    xdg-user-dirs

    brightnessctl
    cliphist
    wl-clipboard
    pavucontrol
    playerctl
    hyprshot

    #screenrecord script
    slurp
    wf-recorder

    btop
    eza
    carapace
    zoxide
    delta
    bat
    fzf
    ripgrep
    tlrc
    zip
    unzip

    glib
    ydotool
    file

    ani-cli
    manga-cli
    yt-dlp
    spotdl

    telegram-desktop
    discord
    element-desktop
    irssi

    chess-tui
    youtube-music

    (mpv.override {scripts = [mpvScripts.mpris];})

    nautilus
    yad

    libreoffice-fresh
  ];
}
