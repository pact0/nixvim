{
  plugins.yazi = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Yazi toggle<CR>";
      mode = "n";
      options = {
        desc = "Toggle Yazi";
      };
    }
  ];
}
