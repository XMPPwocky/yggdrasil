{
  description = "A very basic flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
  {
    nixosModules = { xmppwocky-asgard = import ./modules.nix; };
  };
}
