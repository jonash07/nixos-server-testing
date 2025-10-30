{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    snrs = "sudo nixos-rebuild switch --flake ~/nixos-server-testing#server";
    snrb = "sudo nixos-rebuild boot --flake ~/nixos-server-testing#server";
    snrt = "sudo nixos-rebuild test --flake ~/nixos-server-testing#server";
    nfu = "sudo nix flake update --flake ~/server-nixos";
    ncg = "sudo nix-collect-garbage --delete-older-than 1d";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
