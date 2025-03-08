{
  plugins.snacks = {
    enable = true;
  };

  imports = [
    ./git.nix
    ./lazygit.nix
    ./notifier.nix
    ./bigfile.nix
    ./statuscolumn.nix
  ];
}
