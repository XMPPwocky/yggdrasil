{ pkgs, ... }:

{
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    window = {
      dimensions = { columns = 110; lines = 40; };
    };
    key_bindings = [
      {
        key = "N";
        mods = "Control|Shift";
        action = "SpawnNewInstance";
      }
    ];
    shell = {
      program = "${pkgs.tmux}/bin/tmux";
      args = [ "new-session" "-A" "-D" "-s" "main" ];
    };
    env = {
      TERM = "xterm-256color";
    };
  };
}
