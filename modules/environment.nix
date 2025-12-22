{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake ~/server-nixos#server";
    nrb = "sudo nixos-rebuild boot --flake ~/server-nixos#server";
    nrt = "sudo nixos-rebuild test --flake ~/server-nixos#server";
    nfu = "sudo nix flake update --flake ~/server-nixos";
    ncg = "sudo nix-collect-garbage --delete-older-than 1d";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
