      {
        enable-flakes = import modules/enable-flakes.nix;
        nixpkgs-registry = import modules/nixpkgs-registry.nix { nixpkgs-branch = "nixos-unstable"; };

        hardening = import modules/hardening.nix;

        basic-users = import modules/basic-users.nix;

        laptop = import modules/laptop.nix;

        gui = import modules/gui.nix;
        systemd-resolved = import modules/systemd-resolved.nix;
        audio = import modules/audio.nix;
        alsa-lib-git = import modules/alsa-lib-git.nix;
        tailscale = import modules/tailscale.nix;

        power-utils = import modules/power-utils.nix;

        ps5-controller-udev = import modules/ps5-controller-udev.nix;
        steam = import modules/steam.nix;

        bluetooth = import modules/bluetooth.nix;

        gnome-keyring = import modules/gnome-keyring.nix;

        ledger = import modules/ledger.nix;

        livestreaming = import modules/livestreaming.nix;
      }

