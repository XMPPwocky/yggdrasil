{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    powertop
    intel-gpu-tools
  ];
}
