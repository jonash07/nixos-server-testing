{ inputs, ... }:

{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "patchouli" = import ./../home.nix;
    };
  };
}

