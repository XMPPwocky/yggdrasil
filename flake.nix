{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";

    mimir-home.url = "path:/home/mimir/dotfiles/mimir-home";
  };

  outputs = { self, home-manager, nixpkgs, mimir-home }:
    let
      modules = {
        hardening = modules/hardening.nix;

        enable-flakes = modules/enable-flakes.nix;

        basic-users = modules/basic-users.nix;

        desktop = modules/desktop.nix;
        audio = modules/audio.nix;
        tailscale = modules/tailscale.nix;

        power-utils = modules/power-utils.nix;
        ps5-controller-udev = modules/ps5-controller-udev.nix;
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
            home-manager.users.mimir = mimir-home.outputs.hmCfg;
          }

          modules.enable-flakes

          modules.hardening
          modules.basic-users

          modules.desktop
	  modules.audio
	  modules.tailscale

	  modules.power-utils
	  modules.ps5-controller-udev
        ];
      };
    };
}
