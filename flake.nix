{
  description = "A very basic flake";

  outputs = { self, nixpkgs }:
    let
      nixosModules = (import ./nixos/modules.nix);
    in
    {
      inherit nixosModules;
    };
}

