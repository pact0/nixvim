{
  plugins.neogit = {
    enable = true;
    lazyLoad = {
      settings = {
        cmd = ["Neogit"];
        keys = [];
      };
    };

    settings = {
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gN";
      action = "<cmd>Neogit<cr>";
      options = {
        desc = "Neogit";
      };
    }
  ];
}
