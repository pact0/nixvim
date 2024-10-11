{ config, lib, ... }:
{
  plugins.mini.modules.diff = {
    enable = true;
    view = {
      signs = {
        add = "│";
        change = "│";
        delete = "-";
      };
    };
  };

  keymaps = lib.mkIf (config.plugins.mini.enable && lib.hasAttr "diff" config.plugins.mini.modules) [
    {
      mode = "n";
      key = "<leader>gD";
      action = ":lua  MiniDiff.toggle_overlay()<CR>";
      options = {
        desc = "Toggle Git Diff";
        silent = true;
      };
    }

  ];
}
