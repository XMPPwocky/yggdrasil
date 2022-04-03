{ home-manager, customPackages }:
{ nixpkgs, config, ...}:
{
  enable-flakes = import nixos-modules/enable-flakes.nix;
  nixpkgs-registry = import nixos-modules/nixpkgs-registry.nix { nixpkgs-branch = "nixos-unstable"; };

  home-manager = import nixos-modules/home-manager.nix { inherit home-manager customPackages config; };

  hardening = import nixos-modules/hardening.nix;

  basic-users = import nixos-modules/basic-users.nix;

  laptop = import nixos-modules/laptop.nix;

  gui = import nixos-modules/gui.nix;
  systemd-resolved = import nixos-modules/systemd-resolved.nix;
  audio = import nixos-modules/audio.nix;
  alsa-lib-git = import nixos-modules/alsa-lib-git.nix;
  tailscale = import nixos-modules/tailscale.nix;

  power-utils = import nixos-modules/power-utils.nix;

  ps5-controller-udev = import nixos-modules/ps5-controller-udev.nix;
  steam = import nixos-modules/steam.nix;

  bluetooth = import nixos-modules/bluetooth.nix;

  gnome-keyring = import nixos-modules/gnome-keyring.nix;

  ledger = import nixos-modules/ledger.nix;

  livestreaming = import nixos-modules/livestreaming.nix;
}
