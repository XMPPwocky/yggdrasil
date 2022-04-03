{ home-manager, customPackages, nixosModules, flake-utils, nixpkgs }: {
  mimir-nixos-fw = let pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [

    { 
	    nixpkgs.config.nixpkgs-branch = "nixos-stable";
    }
      (import ./machines/mimir-nixos-fw/configuration.nix)
      nixosModules.nixpkgs-registry
      nixosModules.enable-flakes

      nixosModules.hardening

      nixosModules.basic-users
      #nixosModules.homeManager

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
