{ pkgs, cfg, ... }: {
  environment.systemPackages = [ pkgs.obs-studio ];
  boot.kernelModules=
}
