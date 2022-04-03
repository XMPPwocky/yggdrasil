{ pkgs, config, ... }: {
  environment.systemPackages = [ pkgs.obs-studio ];
  boot.extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
}
