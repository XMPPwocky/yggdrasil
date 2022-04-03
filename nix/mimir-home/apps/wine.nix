{ pkgs, ... }:

{
  home.packages = [
    pkgs.wineWowPackages.stable
  ];
}
