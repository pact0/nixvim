{
  plugins.yanky = {
    enable = true;
    # lazyLoad.settings = {
    #   keys = [
    #     "p"
    #     "P"
    #     "gp"
    #     "gP"
    #     "<c-n>"
    #     "<c-p>"
    #     "<leader>Y"
    #   ];
    # };

    enableTelescope = true;
  };

  keymaps = [
    {
      mode = ["n" "x"];
      key = "p";
      action = "<Plug>(YankyPutAfter)";
    }

    {
      mode = ["n" "x"];
      key = "P";
      action = "<Plug>(YankyPutBefore)";
    }

    {
      mode = ["n" "x"];
      key = "gp";
      action = "<Plug>(YankyGPutAfter)";
    }

    {
      mode = ["n" "x"];
      key = "gP";
      action = "<Plug>(YankyGPutBefore)";
    }

    {
      mode = ["n" "x"];
      key = "<c-p>";
      action = "<Plug>(YankyPreviousEntry)";
    }

    {
      mode = ["n" "x"];
      key = "<c-n>";
      action = "<Plug>(YankyNextEntry)";
    }

    {
      mode = ["n"];
      key = "<leader>Y";
      action = "<cmd>Telescope yank_history<cr>";

      options = {
        desc = "Clipboard history";
      };
    }
  ];
}
