{
  plugins.snacks = {
    enable = true;

    settings = {
      animate.enabled = true;
      image.enabled = true;
      bigfile.enabled = true;
      quickfile.enabled = true;
      scope.enabled = true;
      scratch.enabled = true;
      notifier.enabled = true;
      input.enabled = true;
    };
  };

  imports = [
    ./git.nix
    ./lazygit.nix
    # ./statuscolumn.nix
    # ./indent.nix
  ];
}
