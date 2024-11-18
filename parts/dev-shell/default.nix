{
  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devShells.default = pkgs.mkShellNoCC {
      name = "nixvim";
      meta.description = ''
        The default development shell for nixvim configuration
      '';

      # Set up pre-commit hooks when user enters the shell.
      shellHook = ''
        ${config.pre-commit.installationScript}
      '';

      # Tell Direnv to shut up.
      DIRENV_LOG_FORMAT = "";

      # Receive packages from treefmt's configured devShell.
      inputsFrom = [config.treefmt.build.devShell];
      packages = [
        # Packages provided by flake inputs
        config.treefmt.build.wrapper # Quick formatting tree-wide with `treefmt`
        # Packages from nixpkgs, for Nix, Flakes or local tools.
        pkgs.git # flakes require Git to be installed, since this repo is version controlled
      ];
    };
  };
}
