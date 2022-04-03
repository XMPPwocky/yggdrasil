{ nixpkgs-branch }:
{
  nix.registry.nixpkgs.from = { id = "nixpkgs"; type = "indirect"; };
  nix.registry.nixpkgs.to = {
    type = "github";
    owner = "NixOS";
    repo = "nixpkgs";
    ref = nixpkgs-branch;
  };
}
