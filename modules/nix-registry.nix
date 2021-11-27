{
  nix.registry.nixpkgs.from = { id = "nixpkgs"; type = "indirect"; };
  nix.registry.nixpkgs.to = {
    type = "github";
    owner = "NixOS";
    repo = "nixpkgs";
    ref = "nixos-unstable";
  };
}
