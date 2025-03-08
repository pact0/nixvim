{
  imports = [
    # ./git-conflict.nix
    ./gitblame.nix
    # ./gitlinker.nix
    ./gitsigns.nix
    ./neogit.nix
    ./worktree.nix
    ./diffview.nix
  ];

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>g";
      action = "+git";
      options = {
        desc = "+git";
      };
    }
  ];
}
