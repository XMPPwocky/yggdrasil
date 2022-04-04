{ pkgs, ... }:
{
  nixpkgs.overlays = [
    (
      self: super:
        let
          gitCommit = "7ffe3d41626279e43fddfec8a02f520c3b79190e";
          srcHash = "sha256-PMVk8Ozv0+R5DTIpQV331Op5Z3Lfpw6j3ziHwj3Tcj4=";
        in
        {
          alsa-lib-git = pkgs.alsa-lib.overrideAttrs (old: {
            name = "alsa-lib-git";
            version = "git-${gitCommit}";

            # we need to add autoreconfHook when building from GitHub - the nixpkgs version
            # fetches the source as a tarball which has already had
            # automake/autoconf run. 
            nativeBuildInputs = [ pkgs.autoreconfHook ];

            src = pkgs.fetchFromGitHub {
              owner = "alsa-project";
              repo = "alsa-lib";
              rev = gitCommit;
              hash = srcHash;
            };
          });
        }
    )
  ];
}
