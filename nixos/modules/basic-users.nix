{ pkgs, ... }:
{
  users.mutableUsers = false;
  users.users.mimir = {
    isNormalUser = true;
    description = "Mimir";

    extraGroups = [ "audio" "jackaudio" "wheel" "networkmanager" "input" "plugdev" ];

    passwordFile = "/etc/mimir_pwhash";
  };
}
