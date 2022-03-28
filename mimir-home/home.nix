customPackages:
{ config, pkgs, lib, ... }:

{
  imports = [
    apps/nushell.nix

    apps/alacritty.nix
    apps/tmux.nix

    apps/neovim/default.nix

    apps/nixops.nix

    apps/resilio.nix
    apps/duplicacy-web.nix

    apps/chromium.nix
    apps/firefox.nix

    apps/signal-desktop.nix
    apps/element-desktop.nix

    apps/bitwig.nix

    apps/calibre.nix

    apps/zotero.nix

    apps/vlc.nix

    apps/weechat.nix

    ./cfg-defaults.nix
  ];

  programs.home-manager.enable = true;

  home.username = "mimir";
  home.homeDirectory = "/home/mimir";

  home.stateVersion = "21.05";

  nixpkgs.config = {
    allowUnfree = true;
  };

  # workaround for weird issue that seems related to
  # https://github.com/nix-community/home-manager/issues/1118
  fonts.fontconfig.enable = lib.mkForce false;

  home.packages = (with pkgs; [
    fd
    ripgrep
    mosh

    discord
    tdesktop

    plexamp
    joplin-desktop

    libreoffice

    resilio-sync

    plasma-pa
    ark

    pinentry-qt

    mixxx

    (customPackages.binaryninja.makeBinjaWrapper { binaryNinjaPath = "/home/mimir/binaryninja"; extraPythonPackages = (p: [ p.colorama p.scapy ]); })

    sshfs
  ]);

  programs.bash.enable = true;
  programs.git = {
    enable = true;
    userName = "Mimir";
    userEmail = "mimir@xmppwocky.net";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
