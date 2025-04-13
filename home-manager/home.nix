{ config, pkgs, ... }:

{
 ## import modules here
  imports = [
    ./modules/nvim.nix
  ];

  environment.systemPackages = [pkgs.mullvad-vpn];
  services = {
    mullvad-vpn.enable = true;
  };

  home.username = "harun";
  home.homeDirectory = "/home/harun";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;
}
