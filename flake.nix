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
      modules = {
        hardening = import modules/hardening.nix;

        enable-flakes = import modules/enable-flakes.nix;
        nix-registry = import modules/nix-registry.nix;

        basic-users = import modules/basic-users.nix;

        laptop = import modules/laptop.nix;

        gui = import modules/gui.nix;
        systemd-resolved = import modules/systemd-resolved.nix;
        audio = import modules/audio.nix;
        alsa-lib-git = import modules/alsa-lib-git.nix;
        tailscale = import modules/tailscale.nix;

        power-utils = import modules/power-utils.nix;

        ps5-controller-udev = import modules/ps5-controller-udev.nix;
        steam = import modules/steam.nix;
      };

      customPackages = {
        binaryninja = binaryninja-nix;
      };
    in
    {
      nixosModules = modules;

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

          modules.nix-registry
          modules.enable-flakes

          modules.hardening
          modules.basic-users

          modules.laptop

          modules.gui

          modules.audio
          modules.alsa-lib-git

          modules.systemd-resolved
          modules.tailscale

          modules.power-utils

          modules.ps5-controller-udev
          modules.steam
        ];
      };
    };
}
