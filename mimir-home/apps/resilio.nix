{pkgs, ...}:
let
  resilioPkg = pkgs.resilio-sync;
in {
  home.packages = [ resilioPkg ];

  systemd.user.services.resilio = {
    Unit = {
      Description = "Start rslsync at login";
    };

    Service = {
      ExecStart = "${resilioPkg}/bin/rslsync";
      Type = "forking";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

  };
}

