{
  inputs,
  lib,
  self,
  ...
}: {
  imports = [
    ./pre-commit
    ./dev-shell
    ./fmt.nix
    ./nixvim.nix
  ];

  perSystem = {
    config,
    system,
    ...
  }: {
    _module.args.pkgs = import inputs.nixpkgs {
      inherit system;
      overlays = lib.attrValues self.overlays;
      config.allowUnfree = true;
    };

    packages.default = config.packages.nixvim;
  };
}
