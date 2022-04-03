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
      nixosModules = (import ./nix/nixos-modules.nix) { inherit customPackages home-manager nixpkgs; };
      nixosConfigurations = (import ./nix/nixos-configurations.nix) { inherit customPackages home-manager nixpkgs nixosModules; };
    in
    {
      inherit nixosConfigurations nixosModules;
    };
}
