let
  users = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC3yvkgFUs8R4CMrcZjlCrm0aGNl/nOVVV7VZKrsrFHN harun@nixos"
  ];

  systems = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJCcCswTRab6jUjBA/aRsPa0t82e6M49LNeZdTkGEomD root@nixos"
  ];

  secrets = [];

in
  builtins.listToAttrs (map
  (secret: {
    name = secret;
    value = { publicKeys = users ++ systems; };
  })
  secrets)
