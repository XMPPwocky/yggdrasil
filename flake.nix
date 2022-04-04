{
  description = "A very basic flake";

  outputs = { self, nixpkgs }:
    let
      nixosModules = (import ./nixos/modules.nix) { inherit nixpkgs; };
      nixosConfigurations = (import ./nixos/configurations.nix) { inherit nixpkgs; };
    in
    {
      inherit nixosConfigurations nixosModules;
    };
}
