{
  plugins.flash = {
    enable = true;
    # lazyLoad.settings = {
    #   enable = true;
    #
    #   before.__raw = ''
    #     function()
    #       require('lz.n').trigger_load('flash')
    #       require('lz.n').trigger_load('flash.nvim')
    #     end
    #   '';
    #   keys = [
    #     "<leader>S"
    #     {
    #       __unkeyed-1 = "<leader>S";
    #       __unkeyed-2.__raw = ''
    #         function()
    #           require('flash').treesitter()
    #         end
    #       '';
    #       desc = "Flash Treesitter";
    #     }
    #   ];
    # };
    settings = {
      modes = {
        char = {
          jump_labels = true;

          highlight = {
            backdrop = true;
            matches = true;
          };
        };
      };

      label.rainbow.enabled = true;

      highlight = {
        backdrop = true;
        matches = true;
        # groups = {
        #   match = "RainbowRed";
        #   current = "RainbowYellow";
        #   backdrop = "RainbowBlue";
        #   label = "RainbowOrange";
        # };
      };
    };
  };

  keymaps = [
    {
      key = "S";
      action = "<cmd>lua require('flash').treesitter()<cr>";
      mode = [
        "n"
        "x"
        "o"
      ];
      options = {
        desc = "Flash Treesitter";
      };
    }

    {
      key = "s";
      action = "<cmd>lua require('flash').jump()<cr>";
      mode = [
        "n"
        "x"
        "o"
      ];
      options = {
        desc = "Flash";
      };
    }
  ];
}
