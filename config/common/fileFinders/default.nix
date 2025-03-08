{
  imports = [
    ./telescope.nix
    # ./fzf.nix
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
      options = {
        desc = "+file/file";
      };
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
      options = {
        desc = "+search";
      };
    }
  ];
}
