{
  description = "NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";

    nvf.url = "github:notashelf/nvf";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = {
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import inputs.systems;

      imports = [
        ./parts
      ];

      perSystem = {
        system,
        pkgs,
        ...
      }: let
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = ./config;
        };

        nvf =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = pkgs;
            modules = [
              ./nvf
              # Or move this to a separate file and add it's path here instead
              # IE: ./nvf_module.nix
              (
                {...}: {
                  # Add any custom options (and do feel free to upstream them!)
                  # options = { ... };
                  config.vim = {
                    theme.enable = true;
                    # and more options as you see fit...
                  };
                }
              )
            ];
          })
          .neovim;
      in {
        packages = {
          default = nvim;
          minimal = nvim;
          nvf = nvf;
        };
      };
    };
}
