{ lib, config, pkgs, ... }:

{
  system.stateVersion = "21.05";

  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nixpkgs.config.allowUnfree = true;

  networking.networkmanager.enable = true;

  networking.hostName = "mimir-nixos-fw"; # Define your hostname.

  time.timeZone = "America/Los_Angeles";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;

  networking.firewall.enable = true;
  networking.firewall.checkReversePath = true;
  networking.firewall.allowedTCPPorts = [
    53735 # resilio (non-default)
  ];
  networking.firewall.allowedUDPPorts = [
    53735 # resilio (non-default)
  ];

  services.flatpak.enable = true;

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [ intel-media-driver vaapiIntel ];
    driSupport32Bit = true;
  };
  environment.sessionVariables.LIBVA_DRIVER_NAME = "iHD";

  services.fprintd.enable = false;

  services.pcscd.enable = true;
  services.yubikey-agent.enable = true;
  services.fwupd.enable = true;
  services.ratbagd.enable = true;

  services.gvfs.enable = true;
  services.udev.packages = [ pkgs.android-udev-rules ];

  security.sudo.wheelNeedsPassword = false;

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableAllFirmware = true;

  boot.kernelParams = [
    "i915.enable_fbc=1"
    "i915.enable_psr=1"
    "i915.enable_guc=2"
    "mem_sleep_default=s2idle"
  ];
  boot.extraModprobeConfig = lib.mkMerge [
    "options iwlwifi power_save=1"
  ];

  fileSystems."/".options = [ "relatime" "nodiratime" "discard=async" "compress=zstd:1" ];

  security.allowUserNamespaces = true;
  boot.kernel.sysctl."kernel.unprivileged_userns_clone" = 1;

}
