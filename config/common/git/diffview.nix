{
  plugins.diffview = {
    enable = true;
    enhancedDiffHl = true;
  };

  keymaps = [
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>U";
    #   action = "<cmd>UndotreeToggle<cr>";
    #   options = {
    #     desc = "Toggle Undotree";
    #   };
    # }
  ];

  highlight."GitSignsAdd"   .link = "diffAdded";
  highlight."GitSignsChange".link = "diffChanged";
  highlight."GitSignsDelete".link = "diffRemoved";
}
