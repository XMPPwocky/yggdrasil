{ pkgs, ... }:
{
  home.packages = [
    pkgs.weechat.override {
        configure = { availablePlugins, ... }: {
          scripts = with super.weechatScripts; [ weechat-matrix ];
        };
    }
  ];
}
