{ config, pkgs, ... }:

let
  bitwig-410 =
    pkgs.bitwig-studio4.overrideAttrs (old: rec {
      pname = old.pname;
      version = "4.1";

      src = pkgs.fetchurl {
        url = "https://downloads.bitwig.com/stable/${version}/${pname}-${version}.deb";
        sha256 = "sha256-h6TNlfKgN7CPhtY8DxESrydtEsdVPT+Uf+VKcqKVuXw=";
      };
    });
  bitwig = (bitwig-410.override {
    alsa-lib = pkgs.alsa-lib-git;
  });
in
{
  home.packages = [ bitwig ];
}
