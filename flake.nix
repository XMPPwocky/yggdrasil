{
  description = "A very basic flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    let
      mkAsgardNixOSModules = (system: 
        (nixpkgs.legacyPackages.${system}.callPackage ./modules.nix { inherit flake-utils; }));

      nixosModules = (
        flake-utils.lib.eachDefaultSystem mkAsgardNixOSModules
      );

    in
    {
      inherit nixosModules;
    };
}
