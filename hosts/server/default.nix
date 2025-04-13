{ inputs, config, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./content.nix
  ];
}
