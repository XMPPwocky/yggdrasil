{ home-manager, customPackages, flake-utils }:
{
  enable-flakes = nixos-modules/enable-flakes.nix;
  nixpkgs-registry = nixos-modules/nixpkgs-registry.nix;

  homeManager = nixos-modules/home-manager.nix;

  hardening = nixos-modules/hardening.nix;

  basic-users = nixos-modules/basic-users.nix;

  laptop = nixos-modules/laptop.nix;

  gui = nixos-modules/gui.nix;
  systemd-resolved = nixos-modules/systemd-resolved.nix;
  audio = nixos-modules/audio.nix;
  alsa-lib-git = nixos-modules/alsa-lib-git.nix;
  tailscale = nixos-modules/tailscale.nix;

  power-utils = nixos-modules/power-utils.nix;

  ps5-controller-udev = nixos-modules/ps5-controller-udev.nix;
  steam = nixos-modules/steam.nix;

  bluetooth = nixos-modules/bluetooth.nix;

  gnome-keyring = nixos-modules/gnome-keyring.nix;

  ledger = nixos-modules/ledger.nix;

  livestreaming = nixos-modules/livestreaming.nix;
}
