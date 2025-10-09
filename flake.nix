{
  description = "The server flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.server = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./modules
        ];
      };
   };
}

