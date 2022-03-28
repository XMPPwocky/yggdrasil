{ pkgs, ... }:
{
  home.packages = [
    pkgs.weechat.override {
        configure = { availablePlugins, ... }: {
          scripts = with pkgs.weechatScripts; [ weechat-matrix ];
        };
    }
  ];
}
