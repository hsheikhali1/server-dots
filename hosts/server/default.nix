{ inputs, config, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./containers.nix
    ./content.nix
    ./torrent_client.nix
  ];
}
