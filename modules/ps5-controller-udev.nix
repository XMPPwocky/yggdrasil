{
  boot.kernelModules = [ "hid_playstation" ];

  services.udev.extraRules = ''
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0ce6", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", KERNELS=="*054C:0CE6*", MODE="0660", TAG+="uaccess"
KERNEL=="hid_playstation*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0ce6", MODE="0660", TAG+="uaccess"
KERNEL=="hid_playstation*", KERNELS=="*054C:0CE6*", MODE="0660", TAG+="uaccess"
  '';
}
