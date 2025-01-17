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

    openjdk23
    uv
    ruby

    android-tools
    android-studio
    android-studio-tools
    gradle

    nodejs
    yarn
    csslint

    #waydroid
  ];
}
