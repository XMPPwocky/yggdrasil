{
  users.mutableUsers = false;
  users.users.mimir = {
    isNormalUser = true;
    description = "Mimir";

    extraGroups = [ "audio" "jackaudio" "wheel" "networkmanager" "input" ];

    passwordFile = "/etc/mimir_pwhash";
  };
}
