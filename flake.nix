{
  description = "A nixvim configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = { nixvim, flake-parts, nixpkgs, ... } @ inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem = { system, ... }: let
        # Import nixpkgs with unfree allowed
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;  # Allows all unfree

          # For finer control (recommended - only allow specific packages):
          # config.allowUnfreePredicate = pkg:
          #   builtins.elem (pkgs.lib.getName pkg) [
          #     "intelephense"
          #   ];
        };

        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = import ./config;
          extraSpecialArgs = { };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };
        packages = {
          default = nvim;
        };
      };
    };
}
