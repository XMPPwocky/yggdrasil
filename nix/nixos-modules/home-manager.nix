{ home-manager, customPackages, ... }: (
    home-manager.nixosModules.home-manager
    {
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.users.mimir = (import mimir-home/home.nix) customPackages;
    }
    )
