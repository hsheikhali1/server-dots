let
  users = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHL0QQS2fDCYw+rExb9Fz3CKezzksjDGjCMz7Bt7f3aW harun@nixos"

  ];

  systems = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINEcnZ7u+D3Pd7a76DxlkzZd46YerG5Bt0dlTrYtAB1W root@nixos"
  ];

  secrets = [
    "secrets/mullvad_wireguard.age"
    "secrets/wireguard_server.age"
    "secrets/cleanuperr_env.age"
    "secrets/homarr_env.age"
  ];

in
  builtins.listToAttrs (map
  (secret: {
    name = secret;
    value = { publicKeys = users ++ systems; };
  })
  secrets)
