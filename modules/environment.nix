{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --cores 3 --flake ~/server-nixos#server";
    nrb = "sudo nixos-rebuild boot --cores 3 --flake ~/server-nixos#server";
    nrt = "sudo nixos-rebuild test --cores 3 --flake ~/server-nixos#server";
    nfu = "sudo nix flake update --flake ~/server-nixos";
    ncg = "sudo nix-collect-garbage --delete-older-than 1d";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
