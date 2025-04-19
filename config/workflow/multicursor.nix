{
  plugins.multicursors = {
    enable = true;
    # lazyLoad.settings = {
    #   cmd = [
    #     "MCstart"
    #     "MCvisual"
    #     "MCclear"
    #     "MCpattern"
    #     "MCvisualPattern"
    #     "MCunderCursor"
    #   ];
    #   keys = [
    #     "<leader>M"
    #   ];
    # };
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>N";
      action = "<cmd>MCstart<cr>";
      options = {
        desc = "Create a selection for selected text or word under the cursor";
      };
    }
  ];
}
