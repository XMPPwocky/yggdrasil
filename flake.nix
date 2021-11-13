{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";

    mimir-home.url = "github:XMPPwocky/mimir-home";
  };

  outputs = { self, home-manager, nixpkgs, mimir-home }:
    let
      modules = {
        hardening = import modules/hardening.nix;

        enable-flakes = import modules/enable-flakes.nix;

        basic-users = import modules/basic-users.nix;

        desktop = import modules/desktop.nix;
        audio = import modules/audio.nix;
        tailscale = import modules/tailscale.nix;

        power-utils = import modules/power-utils.nix;
        ps5-controller-udev = import modules/ps5-controller-udev.nix;
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
