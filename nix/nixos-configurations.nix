{ home-manager, customPackages, nixosModules, nixpkgs }: {
  mimir-nixos-fw = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      ./machines/mimir-nixos-fw/configuration.nix

      nixosModules.nixpkgs-registry
      nixosModules.enable-flakes

      nixosModules.hardening

      nixosModules.basic-users
      nixosModules.home-manager

      nixosModules.laptop

      nixosModules.gui

      nixosModules.audio
      nixosModules.alsa-lib-git

      nixosModules.systemd-resolved
      nixosModules.tailscale

      nixosModules.power-utils

      nixosModules.ps5-controller-udev
      nixosModules.steam

      nixosModules.bluetooth

      nixosModules.gnome-keyring

      nixosModules.ledger

      nixosModules.livestreaming
      ];
  };
}
