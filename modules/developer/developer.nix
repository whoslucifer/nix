{
  config,
  pkgs,
  username,
  ...
}: {
  environment.systemPackages = with pkgs; [
    clang
    cmake
    go
    gcc

    jdk23
    openjdk23
    openjdk17

    uv

    ruby

    android-tools
    vscode
    android-studio
    android-studio-tools
    gradle

    nodejs
    yarn

    jetbrains.idea-community-bin
    netbeans

    php

    jetbrains.pycharm-community-bin

    arduino
    arduino-ide

    waydroid
  ];
}
