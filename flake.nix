{
  inputs = {
    # this seems to be required for .follows to work?
    nixpkgs.url = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    binaryninja-nix.url = "github:XMPPwocky/binaryninja-nix";
  };

  outputs = { self, home-manager, nixpkgs, binaryninja-nix }:
    let
      customPackages = {
        binaryninja = binaryninja-nix;
      };
      nixosModules = import ./nix/nixos-modules.nix;
    in
    {
      inherit nixosModules;

      nixosConfigurations.mimir-nixos-fw = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machines/mimir-nixos-fw/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.mimir = (import mimir-home/home.nix) customPackages;
          }

          nixosModules.nixpkgs-registry
          nixosModules.enable-flakes

          nixosModules.hardening
          nixosModules.basic-users

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
    };
}
