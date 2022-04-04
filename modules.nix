{ home-manager, customPackages, flake-utils }:
{
  enable-flakes = modules/enable-flakes.nix;
  nixpkgs-registry = modules/nixpkgs-registry.nix;

  homeManager = (import modules/home-manager.nix) { homeManager = home-manager; };

  hardening = modules/hardening.nix;

  basic-users = modules/basic-users.nix;

  laptop = modules/laptop.nix;

  gui = modules/gui.nix;
  systemd-resolved = modules/systemd-resolved.nix;
  audio = modules/audio.nix;
  alsa-lib-git = modules/alsa-lib-git.nix;
  tailscale = modules/tailscale.nix;

  power-utils = modules/power-utils.nix;

  ps5-controller-udev = modules/ps5-controller-udev.nix;
  steam = modules/steam.nix;

  bluetooth = modules/bluetooth.nix;

  gnome-keyring = modules/gnome-keyring.nix;

  ledger = modules/ledger.nix;

  livestreaming = modules/livestreaming.nix;
}
