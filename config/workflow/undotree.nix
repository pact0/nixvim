{
  plugins.undotree = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>U";
      action = "<cmd>UndotreeToggle<cr>";
      options = {
        desc = "Toggle Undotree";
      };
    }
  ];
}
