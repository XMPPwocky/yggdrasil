{
  nix.registry.nixpkgs.from = { id = "nixpkgs"; type = "indirect"; };
  nix.registry.nixpkgs.to = {
    id = "nixpkgs";
    ref = "nixos-unstable";
    type = "indirect";
  };
}
