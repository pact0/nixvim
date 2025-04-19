{
  plugins.snacks = {
    settings = {
      input = {
        enabled = true;
      };
      indent = {
        enabled = true;
        only_current = true;
        char = "┊";
        settings = {
          char = "┊";
          # hl = [
          #   "RainbowRed"
          #   "RainbowYellow"
          #   "RainbowBlue"
          #   "RainbowOrange"
          #   "RainbowGreen"
          #   "RainbowViolet"
          #   "RainbowCyan"
          # ];
        };
      };
    };
    #
    # luaConfig = {
    #   post = ''
    #     require('snacks').setup {
    #         indent = {
    #         enabled = false,
    #           char = "┊",
    #         }
    #     }
    #   '';
    # };
  };
}
