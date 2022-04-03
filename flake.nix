{
  inputs = {
    # this seems to be required for .follows to work?
    nixpkgs.url = "nixpkgs";

    flake-utils.url = "github:numtide/flake-utils";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    binaryninja-nix.url = "github:XMPPwocky/binaryninja-nix";
  };

  outputs = { self, home-manager, nixpkgs, binaryninja-nix, flake-utils }:
    let
      customPackages = {
        binaryninja = binaryninja-nix;
      };
      nixosModules = (import ./nix/nixos-modules.nix) { inherit customPackages flake-utils home-manager; };
      nixosConfigurations = (import ./nix/nixos-configurations.nix) { inherit customPackages flake-utils home-manager nixosModules nixpkgs; };
    in
    {
      inherit nixosConfigurations nixosModules;
    };
}
