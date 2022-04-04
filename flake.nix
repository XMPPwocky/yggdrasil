{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    binaryninja-nix.url = "github:XMPPwocky/binaryninja-nix";
    binaryninja-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, home-manager, nixpkgs, binaryninja-nix, flake-utils }:
    let
      customPackages = {
        binaryninja = binaryninja-nix;
      };
      nixosModules = (import ./nixos/modules.nix) { inherit customPackages flake-utils home-manager; };
      nixosConfigurations = (import ./nixos/configurations.nix) { inherit customPackages flake-utils home-manager nixosModules nixpkgs; };
    in
    {
      inherit nixosConfigurations nixosModules;
    };
}
