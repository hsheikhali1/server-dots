{ config, pkgs, ... }:

{
 ## import modules here
  imports = [
    ./modules/nvim.nix
  ];

  home.username = "harun";
  home.homeDirectory = "/home/harun";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
}
