# A reasonable set of config options for a laptop - power management, etc

{ config, ... }:

{
  # Enable thermald, which allows better passive thermal management
  # using thermal profiles from f/w
  services.thermald.enable = true;

  # Use power-efficient work queues.
  boot.kernelParams = [
    "workqueue.power_efficient=1"
  ];

  # TLP config.
  services.tlp = {
    enable = true;
    settings = (
      let
        cpufreq = {
          CPU_SCALING_GOVERNOR_ON_AC = "performance";

          # on newer Intel machines w/ intel_pstate,
          # the "powersave" governor is reasonable
          # and the best option.
          # On older machines, though,
          # the "powersave" governor locks your CPU
          # at the lowest frequency!
          # So... if that's happening, this is probably why.
          CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
        };
        epp = {
          CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
          CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        };
        pcie_aspm = {
          PCIE_ASPM_ON_AC = "performance";
          PCIE_ASPM_ON_BAT = "powersupersave";
        };
        usb = {
          USB_ALLOWLIST="1050:0407";
        };
      in
      cpufreq // epp // pcie_aspm // usb
    );
  };
}
