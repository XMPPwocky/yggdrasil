{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;

    withPython3 = true;
    withNodeJs = true;

    plugins = with pkgs.vimPlugins; [
      coc-nvim
      coc-python
      coc-json
    ];

    extraPackages = with pkgs; [
      nixpkgs-fmt
      rnix-lsp
    ];

    coc.enable = true;

    coc.settings = {
      languageserver.nix = {
        command = "rnix-lsp";
        filetypes = [ "nix" ];
      };
    };

    extraConfig = (builtins.readFile ./init_extra.vim);
  };
}
