{
  programs.chromium.enable = true;
  programs.chromium.extensions = [
    { id = "nngceckbapebfimnlniiiahkandclblb"; } # bitwarden
    { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
  ];
}
