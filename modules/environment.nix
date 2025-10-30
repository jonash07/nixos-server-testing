{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    snrs = "sudo nixos-rebuild switch --flake ~/server-nixos#server";
    snrb = "sudo nixos-rebuild boot --flake ~/server-nixos#server";
    snrt = "sudo nixos-rebuild test --flake ~/server-nixos#server";
    nfu = "sudo nix flake update --flake ~/server-nixos";
    ncg = "sudo nix-collect-garbage --delete-older-than 1d";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
