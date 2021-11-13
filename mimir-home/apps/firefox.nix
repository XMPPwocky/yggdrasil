{ config, pkgs, ... }:
{
  programs.firefox.enable = true;
  programs.firefox.package = pkgs.firefox-bin.override {
    forceWayland = true;
  };
}
