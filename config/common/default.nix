{
  imports = [
    ./sets.nix
    ./keys.nix
    ./ft.nix
    ./autocommands.nix

    ./smart-splits.nix

    ./colorscheme
    ./git
    ./fileFinders
    ./treesitter
    ./snacks
    ./mini
  ];

  plugins.lz-n.enable = true;

  # performance.combinePlugins.enable = true;
  # performance.combinePlugins.standalonePlugins = [
  #   "nvim-treesitter"
  # ];
}
