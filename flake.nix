{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {
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
  };
}
