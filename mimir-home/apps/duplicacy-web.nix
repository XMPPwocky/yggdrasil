{pkgs, ...}:
{
  systemd.user.services.duplicacy-web = {
    Unit = {
      Description = "Start duplicacy-web at login";
    };

    Service = {
      ExecStart = "/home/mimir/duplicacy/duplicacy_web_linux_x64_1.5.0 --background";
      Type = "simple";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

  };
}

